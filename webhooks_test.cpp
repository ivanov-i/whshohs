#include <boost/ut.hpp>


using namespace boost::ut;
using namespace boost::ut::bdd;
using namespace boost::ut::literals;
using namespace std::string_literals;
using namespace std::string_view_literals;

#include "ContextVariables.h"

suite webhooks_test = []
{
	"Array variable"_test = []
	{
		when("given variable name") = []
		{
			const auto name = L"variable"s;

			then("can create variable") = []
			{
				using namespace ContextVariables;
			};
		};
	};
};
