
$SecretNumber = Get-Random (1..20)
Write-Host "I am thinking of a number between 1 and 20."

For ($n=1; $n -le 6; $n+=1)
{
    [int]$Guess = Read-Host -Prompt "Take a guess."
    If ($Guess -lt $SecretNumber)
    {
        Write-Host "Your guess is too low."
    }
    ElseIf ($Guess -gt $SecretNumber)
    {
        Write-Host "Your guess is too high."
    }
    Else
    {
        break
    }
}

If ($Guess -eq $SecretNumber)
{
    Write-Host "Good job! You guessed my number in $n guesses!"
}
Else
{
    Write-Host "Nope. The number I was thinking of was $SecretNumber."
}