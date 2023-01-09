#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

void test_validate_my_username()
{
    TEST_ASSERT_EQUAL_STRING_MESSAGE(my_username(), malloc_username_from_conf_file(), "AESD STUDENTS, PLEASE FIX ME!");
}
