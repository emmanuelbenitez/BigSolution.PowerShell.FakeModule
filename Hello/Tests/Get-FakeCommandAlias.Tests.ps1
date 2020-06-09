#region Copyright & License

# Copyright © 2012 - 2020 François Chabot
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

Import-Module -Name $PSScriptRoot\..\Hello -Force

Describe 'Get-FakeCommandAlias' {
    InModuleScope Hello {
        It 'Returns itself and faka alias.' {
            $expected = @(Get-Command -Name Get-FakeCommandAlias) + @(Get-Alias -Definition Get-FakeCommandAlias)

            $actual = Get-FakeCommandAlias -Name Get-FakeCommandAlias

            Compare-Object -ReferenceObject $expected -DifferenceObject $actual | Should -BeNullOrEmpty
        }
        It 'Returns itself and faka alias wen invoked via alias too.' {
            $expected = @(Get-Command -Name Get-FakeCommandAlias) + @(Get-Alias -Definition Get-FakeCommandAlias)

            $actual = faka -Name faka

            Compare-Object -ReferenceObject $expected -DifferenceObject $actual | Should -BeNullOrEmpty
        }
        It 'Throws for an unknown command or alias.' {
            { Get-FakeCommandAlias -Name Get-Unknown -ErrorAction Stop } | Should -Throw 'The term ''Get-Unknown'' is not recognized as the name of a cmdlet, function, script file, or operable program.'
        }
    }
}
