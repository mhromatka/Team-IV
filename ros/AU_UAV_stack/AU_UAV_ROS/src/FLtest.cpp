/*

First attempt at utilizing FuzzyLite library

*/ 
// standard c++ headers
#include <sstream>
#include <stdlib.h>
#include <time.h>

//blahblahblah
#include "AU_UAV_ROS/PlaneCoordinator.h"
#include "FUZZYLITE/FuzzyEngine.h"
#include "FUZZYLITE/FunctionTerm.h"
#include "FUZZYLITE/RuleBlock.h"
#include <limits>	


void main(int args, char** argv){
        FuzzyOperator& op = FuzzyOperator::DefaultFuzzyOperator();
        FuzzyEngine engine("simple-mamdani", op);
        engine.hedgeSet().add(new fl::HedgeNot);
        engine.hedgeSet().add(new fl::HedgeSomewhat);
        engine.hedgeSet().add(new fl::HedgeVery);
        fl::InputLVar* energy = new fl::InputLVar("Energy");
        energy->addTerm(new fl::ShoulderTerm("LOW", 0.25, 0.5, true));
        energy->addTerm(new fl::TriangularTerm("MEDIUM", 0.25, 0.75));
        energy->addTerm(new fl::ShoulderTerm("HIGH", 0.50, 0.75, false));
        engine.addInputLVar(energy);

        fl::OutputLVar* health = new fl::OutputLVar("Health");
        health->addTerm(new fl::TriangularTerm("BAD", 0.0, 0.50));
        health->addTerm(new fl::TriangularTerm("REGULAR", 0.25, 0.75));
        health->addTerm(new fl::TriangularTerm("GOOD", 0.50, 1.00));
        engine.addOutputLVar(health);
        fl::RuleBlock* block = new fl::RuleBlock();
        block->addRule(new fl::MamdaniRule("if Energy is LOW then Health is BAD", engine));
        block->addRule(new fl::MamdaniRule("if Energy is MEDIUM then Health is REGULAR", engine));
        block->addRule(new fl::MamdaniRule("if Energy is HIGH then Health is GOOD", engine));
        engine.addRuleBlock(block);

        for (fl::flScalar in = 0.0; in < 1.1; in += 0.1) {
            energy->setInput(in);
            engine.process();
            fl::flScalar out = health->output().defuzzify();
            (void)out; //Just to avoid warning when building
            FL_LOG("Energy=" << in);
            FL_LOG("Energy is " << energy->fuzzify(in));
            FL_LOG("Health=" << out);
            FL_LOG("Health is " << health->fuzzify(out));
            FL_LOG("--");
        }
    }

