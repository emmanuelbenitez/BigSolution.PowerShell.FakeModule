#region Copyright & License

# Copyright © 2020 Emmanuel Benitez
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#endregion

@{
   RootModule            = 'BigSolution.FakeModule.psm1'
   '1.0.9'
   GUID                  = 'BFE6C979-73F7-4DBF-BCA9-40F766D17447'
   Author                = 'Emmanuel Benitez'
   CompanyName           = 'Emmanuel Benitez'
   Copyright             = '(c) 2020 Emmanuel Benitez. All rights reserved.'
   Description           = 'This is a fke module for deployment testing purpose'
   ProcessorArchitecture = 'None'
   PowerShellVersion     = '5.0'
   NestedModules         = @(
      'Hello\Hello.psm1'
   )
   RequiredModules       = @()

   AliasesToExport       = @('aka')
   CmdletsToExport       = @()
   FunctionsToExport     = @(
      # Hello.psm1
      'Get-FakeCommandAlias'
   )
   VariablesToExport     = @()
}
