file(REMOVE_RECURSE
  "QuickTest/ItemCode.qml"
  "QuickTest/Main.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appQuickTest_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
