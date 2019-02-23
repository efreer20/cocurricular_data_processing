#Practice the workflow (from the slides)
#
    # Copy in your goToTheZoo() function.
    # Create a goToTheZoo() test file using use_test()
    # Put the previous expectations in a test case.
    # Verify that the tests pass with Cmd + Shift +T.
    # Add test using animal = 7. Verify that it fails.

#RUN IN TERMINAL

usethis::use_test()
  #that created a new folder called "tests"
  #that created a new R file called
   # test-unit-test_demo.R

#RUN IN TERMINAL - AND DUPLICATE FOR ALL FUNCTIONS
use_test(goToTheZoo())
use_test(semesterDateFinder())
