# Optimize and flatten packages
-optimizations !code/simplification/cast,!field/*,!class/merging/*
-optimizationpasses 64
-repackageclasses code

# Avoid some spam
-dontwarn java.lang.invoke.**
-dontwarn java.applet.**, java.awt.**
-dontwarn javax.imageio.**, javax.print.**, javax.sound.**, javax.swing.**, javax.xml.**
-dontwarn org.osgi.**
-dontwarn sun.util.calendar.**, sun.misc.**

-dontnote android.net.http.**
-dontnote org.apache.http.**


# Kotlin
-keep class kotlin.jvm.internal.DefaultConstructorMarker
-keepattributes Signature
-dontnote kotlin.internal.PlatformImplementationsKt
-dontnote kotlin.jvm.internal.Reflection
-dontnote kotlin.coroutines.experimental.SafeContinuation
-dontwarn kotlin.**
-dontwarn kotlinx.**

-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}

# Antlr
-keep class org.antlr.v4.runtime.atn.ATNConfigSet
-dontnote org.antlr.v4.runtime.misc.TestRig

# ThreeTen
-keep class org.threeten.bp.Duration
-keep class org.threeten.bp.LocalDate
-keep class org.threeten.bp.LocalDateTime
-keep class org.threeten.bp.ZoneOffset
-keep class org.threeten.bp.format.DateTimeParseContext
-keep class org.threeten.bp.format.DateTimePrintContext
-keep class org.threeten.bp.temporal.IsoFields$1
-keep class org.threeten.bp.temporal.Temporal
-keep class org.threeten.bp.temporal.TemporalAccessor
-keep class org.threeten.bp.temporal.TemporalField
-keep class org.threeten.bp.temporal.TemporalQuery
-keep class org.threeten.bp.temporal.TemporalUnit
-keep class org.threeten.bp.temporal.ValueRange
-keep class org.threeten.bp.zone.ZoneRulesProvider
-keep class org.threeten.bp.zone.TzdbZoneRulesProvider

# Tika
-dontwarn org.apache.tika.Tika
-dontwarn org.apache.tika.config.TikaConfig
-dontwarn org.apache.tika.detect.NNExampleModelDetector
-dontwarn org.apache.tika.detect.TrainedModelDetector
-dontwarn org.apache.tika.io.TemporaryResources
-dontwarn org.apache.tika.io.TemporaryResources$1
-dontwarn org.apache.tika.io.TikaInputStream
-dontwarn org.apache.tika.parser.ParsingReader
-dontwarn aQute.bnd.annotation.Version
-keep class org.apache.tika.mime.MimeTypes
-keep class org.apache.tika.mime.MimeTypesReader
-dontnote org.apache.tika.utils.CharsetUtils

# JLayer
-dontwarn javazoom.jl.player.PlayerApplet
-keep class javazoom.jl.decoder.JavaLayerUtils

# Scapes Engine

# Keep codecs
-keep class org.tobi29.scapes.engine.utils.codec.spi.ReadableAudioStreamProvider
-keep class * implements org.tobi29.scapes.engine.utils.codec.spi.ReadableAudioStreamProvider

# Scapes
-dontwarn scapes.plugin.tobi29.vanilla.basics.VanillaBasics$register$1$1$1
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$1
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$2
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$3
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$4
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$5
-dontwarn scapes.plugin.tobi29.vanilla.basics.packet.PacketResearch$runServer$1$1$1$$special$$inlined$mapMut$6
-dontwarn org.tobi29.scapes.server.extension.base.DebugCommandsExtension$init$4$1$1

# Keep plugins
-keep class org.tobi29.scapes.plugins.Plugin
-keep class * implements org.tobi29.scapes.plugins.Plugin

# Keep extensions
-keep class org.tobi29.scapes.server.extension.spi.ServerExtensionProvider
-keep class * implements org.tobi29.scapes.server.extension.spi.ServerExtensionProvider
