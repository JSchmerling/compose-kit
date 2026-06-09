plugins {
    alias(libs.plugins.android.library) apply false
    alias(libs.plugins.jetbrains.kotlin.plugin.compose) apply false
    alias(libs.plugins.ktlint)
}

configure<org.jlleitschuh.gradle.ktlint.KtlintExtension> {
    outputToConsole.set(true)
    outputColorName.set("RED")
}
