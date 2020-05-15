.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final codePath:Ljava/lang/String;

.field public final configForSplit:Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public isFeatureSplit:Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final usesSplitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I

.field public final versionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZ)V
    .locals 17
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "isFeatureSplit"    # Z
    .param p5, "configForSplit"    # Ljava/lang/String;
    .param p6, "usesSplitName"    # Ljava/lang/String;
    .param p7, "versionCode"    # I
    .param p8, "versionCodeMajor"    # I
    .param p9, "revisionCode"    # I
    .param p10, "installLocation"    # I
    .param p12, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p13, "coreApp"    # Z
    .param p14, "debuggable"    # Z
    .param p15, "multiArch"    # Z
    .param p16, "use32bitAbi"    # Z
    .param p17, "extractNativeLibs"    # Z
    .param p18, "isolatedSplits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZZZZZ)V"
        }
    .end annotation

    .local p11, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    move-object/from16 v0, p0

    .line 493
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 494
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 495
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 496
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 497
    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 498
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 499
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 500
    move/from16 v7, p7

    iput v7, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 501
    move/from16 v8, p8

    iput v8, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    .line 502
    move/from16 v9, p9

    iput v9, v0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 503
    move/from16 v10, p10

    iput v10, v0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 504
    move-object/from16 v11, p12

    iput-object v11, v0, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 505
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v13, p11

    invoke-interface {v13, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/VerifierInfo;

    iput-object v12, v0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 506
    move/from16 v12, p13

    iput-boolean v12, v0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 507
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 508
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 509
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 510
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 511
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 512
    return-void
.end method


# virtual methods
.method public getLongVersionCode()J
    .locals 2

    .line 515
    iget v0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method
