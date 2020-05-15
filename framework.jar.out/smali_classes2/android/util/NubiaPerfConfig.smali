.class public Landroid/util/NubiaPerfConfig;
.super Ljava/lang/Object;
.source "NubiaPerfConfig.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NubiaPerfConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuGpu(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 44
    invoke-static {p0}, Landroid/util/NubiaPerfConfig;->nativeGetCpuGpu(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeGetCpuGpu(Ljava/lang/String;)Z
.end method

.method private static native nativeGetPerformanceConfigXml(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static readPerformaceConfigXml()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    const-string v0, "/system/etc/nubia_performance_thermal"

    invoke-static {v0}, Landroid/util/NubiaPerfConfig;->nativeGetPerformanceConfigXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPerformaceConfigXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Landroid/util/NubiaPerfConfig;->nativeGetPerformanceConfigXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
