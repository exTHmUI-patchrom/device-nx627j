.class public abstract Landroid/graphics/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Renderer;,
        Landroid/graphics/ColorSpace$Connector;,
        Landroid/graphics/ColorSpace$Rgb;,
        Landroid/graphics/ColorSpace$Lab;,
        Landroid/graphics/ColorSpace$Xyz;,
        Landroid/graphics/ColorSpace$Model;,
        Landroid/graphics/ColorSpace$Adaptation;,
        Landroid/graphics/ColorSpace$RenderIntent;,
        Landroid/graphics/ColorSpace$Named;
    }
.end annotation


# static fields
.field public static final ILLUMINANT_A:[F

.field public static final ILLUMINANT_B:[F

.field public static final ILLUMINANT_C:[F

.field public static final ILLUMINANT_D50:[F

.field private static final ILLUMINANT_D50_XYZ:[F

.field public static final ILLUMINANT_D55:[F

.field public static final ILLUMINANT_D60:[F

.field public static final ILLUMINANT_D65:[F

.field public static final ILLUMINANT_D75:[F

.field public static final ILLUMINANT_E:[F

.field public static final MAX_ID:I = 0x3f

.field public static final MIN_ID:I = -0x1

.field private static final NTSC_1953_PRIMARIES:[F

.field private static final SRGB_PRIMARIES:[F

.field private static final sNamedColorSpaces:[Landroid/graphics/ColorSpace;


# instance fields
.field private final mId:I

.field private final mModel:Landroid/graphics/ColorSpace$Model;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_A:[F

    .line 146
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_B:[F

    .line 151
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    .line 157
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 162
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D55:[F

    .line 167
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 173
    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 178
    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D75:[F

    .line 183
    new-array v1, v0, [F

    fill-array-data v1, :array_8

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_E:[F

    .line 198
    const/4 v1, 0x6

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    sput-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 199
    new-array v2, v1, [F

    fill-array-data v2, :array_a

    sput-object v2, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    .line 200
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    sput-object v2, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    .line 203
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/ColorSpace;

    sput-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    .line 1429
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v11, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v5, "sRGB IEC61966-2.1"

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v8, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v13, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v15, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v17, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v19, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v21, 0x4003333333333333L    # 2.4

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1434
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v11, v2, v3

    .line 1436
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v14, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v5, "sRGB IEC61966-2.1 (Linear)"

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1442
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v14, v2, v3

    .line 1444
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v14, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v5, "scRGB-nl IEC 61966-2-2:2003"

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v8, Landroid/graphics/-$$Lambda$ColorSpace$BNp-1CyCzsQzfE-Ads9uc4rJDfw;->INSTANCE:Landroid/graphics/-$$Lambda$ColorSpace$BNp-1CyCzsQzfE-Ads9uc4rJDfw;

    sget-object v9, Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;->INSTANCE:Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1451
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const v10, -0x40b374bc    # -0.799f

    const v11, 0x40198937    # 2.399f

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$1;)V

    aput-object v14, v2, v3

    .line 1453
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v14, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v5, "scRGB IEC 61966-2-2:2003"

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1459
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/high16 v10, -0x41000000    # -0.5f

    const v11, 0x40eff7cf    # 7.499f

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v14, v2, v3

    .line 1461
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v11, Landroid/graphics/ColorSpace$Rgb;

    const-string v5, "Rec. ITU-R BT.709-5"

    new-array v6, v1, [F

    fill-array-data v6, :array_c

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v8, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v13, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v15, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v17, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v19, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v21, 0x4001c71c71c71c72L    # 2.2222222222222223

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v4, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    .line 1466
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v11, v2, v3

    .line 1468
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v11, Landroid/graphics/ColorSpace$Rgb;

    const-string v5, "Rec. ITU-R BT.2020-1"

    new-array v6, v1, [F

    fill-array-data v6, :array_d

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v8, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v13, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v15, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v19, 0x3fb4d9e83e425aeeL    # 0.08145

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v4, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    .line 1473
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v11, v2, v3

    .line 1475
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    new-instance v14, Landroid/graphics/ColorSpace$Rgb;

    const-string v5, "SMPTE RP 431-2-2007 DCI (P3)"

    new-array v6, v1, [F

    fill-array-data v6, :array_e

    new-array v7, v0, [F

    fill-array-data v7, :array_f

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    .line 1481
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const-wide v8, 0x4004cccccccccccdL    # 2.6

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v14, v2, v3

    .line 1483
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v10, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "Display P3"

    new-array v5, v1, [F

    fill-array-data v5, :array_10

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v12, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v14, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v16, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v18, 0x3fa3f7ced916872bL    # 0.039

    const-wide v20, 0x4003333333333333L    # 2.4

    move-object v11, v7

    invoke-direct/range {v11 .. v21}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 1488
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v10, v0, v2

    .line 1490
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v10, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "NTSC (1953)"

    sget-object v5, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    new-instance v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v12, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v14, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v16, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v18, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v20, 0x4001c71c71c71c72L    # 2.2222222222222223

    move-object v11, v7

    invoke-direct/range {v11 .. v21}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v3, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    .line 1495
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v10, v0, v2

    .line 1497
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v10, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "SMPTE-C RGB"

    new-array v5, v1, [F

    fill-array-data v5, :array_11

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-object v11, v7

    invoke-direct/range {v11 .. v21}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    .line 1502
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v10, v0, v2

    .line 1504
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "Adobe RGB (1998)"

    new-array v5, v1, [F

    fill-array-data v5, :array_12

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v3, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    .line 1510
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    const-wide v7, 0x400199999999999aL    # 2.2

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v13, v0, v2

    .line 1512
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v10, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "ROMM RGB ISO 22028-2:2013"

    new-array v5, v1, [F

    fill-array-data v5, :array_13

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    new-instance v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3fb0000000000000L    # 0.0625

    const-wide v18, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v20, 0x3ffccccccccccccdL    # 1.8

    move-object v11, v7

    invoke-direct/range {v11 .. v21}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v3, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    .line 1517
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    aput-object v10, v0, v2

    .line 1519
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "SMPTE ST 2065-1:2012 ACES"

    new-array v5, v1, [F

    fill-array-data v5, :array_14

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v3, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    .line 1525
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const v9, -0x38802000    # -65504.0f

    const v10, 0x477fe000    # 65504.0f

    const/4 v12, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v13, v0, v2

    .line 1527
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string v4, "Academy S-2014-004 ACEScg"

    new-array v5, v1, [F

    fill-array-data v5, :array_15

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    .line 1533
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    aput-object v13, v0, v2

    .line 1535
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Xyz;

    const-string v3, "Generic XYZ"

    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    .line 1537
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V

    aput-object v2, v0, v1

    .line 1539
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Lab;

    const-string v3, "Generic L*a*b*"

    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 1541
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V

    aput-object v2, v0, v1

    .line 1543
    return-void

    nop

    :array_0
    .array-data 4
        0x3ee527e5    # 0.44757f
        0x3ed09d49    # 0.40745f
    .end array-data

    :array_1
    .array-data 4
        0x3eb2641b    # 0.34842f
        0x3eb4063a    # 0.35161f
    .end array-data

    :array_2
    .array-data 4
        0x3e9ec02f    # 0.31006f
        0x3ea1dfb9    # 0.31616f
    .end array-data

    :array_3
    .array-data 4
        0x3eb0fba9
        0x3eb78d50    # 0.3585f
    .end array-data

    :array_4
    .array-data 4
        0x3eaa32f4    # 0.33242f
        0x3eb1e258    # 0.34743f
    .end array-data

    :array_5
    .array-data 4
        0x3ea4b33e    # 0.32168f
        0x3eace315    # 0.33767f
    .end array-data

    :array_6
    .array-data 4
        0x3ea01b86
        0x3ea8754f    # 0.32902f
    .end array-data

    :array_7
    .array-data 4
        0x3e991926    # 0.29902f
        0x3ea13405    # 0.31485f
    .end array-data

    :array_8
    .array-data 4
        0x3eaaaa3b    # 0.33333f
        0x3eaaaa3b    # 0.33333f
    .end array-data

    :array_9
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_a
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_b
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    :array_c
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_d
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_e
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_f
    .array-data 4
        0x3ea0c49c    # 0.314f
        0x3eb3b646    # 0.351f
    .end array-data

    :array_10
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_11
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_12
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_13
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_14
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_15
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Landroid/graphics/ColorSpace$Model;
    .param p3, "id"    # I

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 875
    if-eqz p2, :cond_1

    .line 879
    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_0

    .line 884
    iput-object p1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 885
    iput-object p2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 886
    iput p3, p0, Landroid/graphics/ColorSpace;->mId:I

    .line 887
    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The id must be between -1 and 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A color space must have a model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/graphics/ColorSpace$Model;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/graphics/ColorSpace$1;

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method private static absRcpResponse(DDDDDD)D
    .locals 16
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    move-wide/from16 v0, p0

    .line 1571
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private static absResponse(DDDDDD)D
    .locals 16
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    move-wide/from16 v0, p0

    .line 1578
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic access$1100()[F
    .locals 1

    .line 136
    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    return-object v0
.end method

.method static synthetic access$1200([F)[F
    .locals 1
    .param p0, "x0"    # [F

    .line 136
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300([F[F)[F
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 136
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()[F
    .locals 1

    .line 136
    sget-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic access$1500([F[F)Z
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 136
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[F
    .locals 1

    .line 136
    sget-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic access$1700(DDDDDDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # D
    .param p10, "x5"    # D
    .param p12, "x6"    # D
    .param p14, "x7"    # D

    .line 136
    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->response(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(DDDDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # D
    .param p10, "x5"    # D

    .line 136
    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(DDDDDDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # D
    .param p10, "x5"    # D
    .param p12, "x6"    # D
    .param p14, "x7"    # D

    .line 136
    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(DDDDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # D
    .param p10, "x5"    # D

    .line 136
    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100([F)[F
    .locals 1
    .param p0, "x0"    # [F

    .line 136
    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600([F[F)[F
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 136
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700([F[F[F)[F
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F
    .param p2, "x2"    # [F

    .line 136
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800([F[F)[F
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 136
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900([F)V
    .locals 0
    .param p0, "x0"    # [F

    .line 136
    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToUv([F)V

    return-void
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;
    .locals 1
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F

    .line 1297
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;
    .locals 6
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F
    .param p2, "adaptation"    # Landroid/graphics/ColorSpace$Adaptation;

    .line 1327
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_2

    .line 1328
    move-object v0, p0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1329
    .local v0, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 1331
    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1332
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v1

    .line 1333
    .local v1, "xyz":[F
    :goto_0
    iget-object v2, p2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 1334
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v3

    .line 1333
    invoke-static {v2, v3, v1}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 1335
    .local v2, "adaptationTransform":[F
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    .line 1337
    .local v3, "transform":[F
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, p1, v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$1;)V

    return-object v4

    .line 1339
    .end local v0    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .end local v1    # "xyz":[F
    .end local v2    # "adaptationTransform":[F
    .end local v3    # "transform":[F
    :cond_2
    return-object p0
.end method

.method private static chromaticAdaptation([F[F[F)[F
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "srcWhitePoint"    # [F
    .param p2, "dstWhitePoint"    # [F

    .line 1774
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v0

    .line 1775
    .local v0, "srcLMS":[F
    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v1

    .line 1777
    .local v1, "dstLMS":[F
    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v5, v0, v3

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v4, v1, v3

    aget v5, v0, v3

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    aget v4, v1, v3

    aget v5, v0, v3

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 1778
    .local v2, "LMS":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v3

    invoke-static {v2, p0}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    return-object v3
.end method

.method private static compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .locals 7
    .param p0, "a"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "b"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 1592
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 1593
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v3, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    sub-double/2addr v1, v3

    .line 1594
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    sub-double/2addr v1, v5

    .line 1595
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    sub-double/2addr v1, v5

    .line 1596
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    sub-double/2addr v1, v5

    .line 1597
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    sub-double/2addr v1, v5

    .line 1598
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    sub-double/2addr v1, v5

    .line 1599
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    sub-double/2addr v1, v5

    .line 1600
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1593
    :goto_0
    return v0
.end method

.method private static compare([F[F)Z
    .locals 5
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 1611
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1612
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1613
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    return v1

    .line 1612
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1615
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1
    .param p0, "source"    # Landroid/graphics/ColorSpace;

    .line 1245
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 3
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 1267
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 1270
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    move-object v1, p0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 1273
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;

    .line 1189
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 3
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 1215
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 1218
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    move-object v1, p0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, v1, v2, p2}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 1221
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static createRenderer()Landroid/graphics/ColorSpace$Renderer;
    .locals 2

    .line 1425
    new-instance v0, Landroid/graphics/ColorSpace$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/ColorSpace$Renderer;-><init>(Landroid/graphics/ColorSpace$1;)V

    return-object v0
.end method

.method static get(I)Landroid/graphics/ColorSpace;
    .locals 3
    .param p0, "index"    # I

    .line 1357
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 1361
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    aget-object v0, v0, p0

    return-object v0

    .line 1358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID, must be in the range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;
    .locals 2
    .param p0, "name"    # Landroid/graphics/ColorSpace$Named;

    .line 1378
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static inverse3x3([F)[F
    .locals 25
    .param p0, "m"    # [F

    .line 1627
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 1628
    .local v2, "a":F
    const/4 v3, 0x3

    aget v4, v0, v3

    .line 1629
    .local v4, "b":F
    const/4 v5, 0x6

    aget v6, v0, v5

    .line 1630
    .local v6, "c":F
    const/4 v7, 0x1

    aget v8, v0, v7

    .line 1631
    .local v8, "d":F
    const/4 v9, 0x4

    aget v10, v0, v9

    .line 1632
    .local v10, "e":F
    const/4 v11, 0x7

    aget v12, v0, v11

    .line 1633
    .local v12, "f":F
    const/4 v13, 0x2

    aget v14, v0, v13

    .line 1634
    .local v14, "g":F
    const/4 v15, 0x5

    aget v16, v0, v15

    .line 1635
    .local v16, "h":F
    const/16 v17, 0x8

    aget v18, v0, v17

    .line 1637
    .local v18, "i":F
    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    .line 1638
    .local v19, "A":F
    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    .line 1639
    .local v20, "B":F
    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    .line 1641
    .local v21, "C":F
    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v22, v22, v23

    mul-float v23, v6, v21

    add-float v22, v22, v23

    .line 1643
    .local v22, "det":F
    array-length v11, v0

    new-array v11, v11, [F

    .line 1644
    .local v11, "inverted":[F
    div-float v23, v19, v22

    aput v23, v11, v1

    .line 1645
    div-float v1, v20, v22

    aput v1, v11, v7

    .line 1646
    div-float v1, v21, v22

    aput v1, v11, v13

    .line 1647
    mul-float v1, v6, v16

    mul-float v7, v4, v18

    sub-float/2addr v1, v7

    div-float v1, v1, v22

    aput v1, v11, v3

    .line 1648
    mul-float v1, v2, v18

    mul-float v3, v6, v14

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v11, v9

    .line 1649
    mul-float v1, v4, v14

    mul-float v3, v2, v16

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v11, v15

    .line 1650
    mul-float v1, v4, v12

    mul-float v3, v6, v10

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v11, v5

    .line 1651
    mul-float v1, v6, v8

    mul-float v3, v2, v12

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    const/4 v3, 0x7

    aput v1, v11, v3

    .line 1652
    mul-float v1, v2, v10

    mul-float v3, v4, v8

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v11, v17

    .line 1653
    return-object v11
.end method

.method static synthetic lambda$static$0(D)D
    .locals 12
    .param p0, "x"    # D

    .line 1448
    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absRcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$static$1(D)D
    .locals 12
    .param p0, "x"    # D

    .line 1449
    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;
    .locals 6
    .param p0, "toXYZD50"    # [F
    .param p1, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 1399
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1400
    .local v3, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v4

    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v4, v5, :cond_0

    .line 1401
    sget-object v4, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    invoke-static {v3, v4}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v4

    check-cast v4, Landroid/graphics/ColorSpace$Rgb;

    .line 1402
    .local v4, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v4}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {p0, v5}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1403
    invoke-static {v4}, Landroid/graphics/ColorSpace$Rgb;->access$300(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/ColorSpace;->compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1404
    return-object v3

    .line 1399
    .end local v3    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local v4    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1409
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mul3x3([F[F)[F
    .locals 13
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1667
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1668
    .local v0, "r":[F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    const/4 v4, 0x6

    aget v6, p0, v4

    const/4 v7, 0x2

    aget v8, p1, v7

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    aput v2, v0, v1

    .line 1669
    aget v2, p0, v5

    aget v6, p1, v1

    mul-float/2addr v2, v6

    const/4 v6, 0x4

    aget v8, p0, v6

    aget v9, p1, v5

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    const/4 v8, 0x7

    aget v9, p0, v8

    aget v10, p1, v7

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    aput v2, v0, v5

    .line 1670
    aget v2, p0, v7

    aget v9, p1, v1

    mul-float/2addr v2, v9

    const/4 v9, 0x5

    aget v10, p0, v9

    aget v11, p1, v5

    mul-float/2addr v10, v11

    add-float/2addr v2, v10

    const/16 v10, 0x8

    aget v11, p0, v10

    aget v12, p1, v7

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v7

    .line 1671
    aget v2, p0, v1

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v3

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v4

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v3

    .line 1672
    aget v2, p0, v5

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v6

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v8

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v6

    .line 1673
    aget v2, p0, v7

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v9

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v10

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v9

    .line 1674
    aget v1, p0, v1

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v3

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v4

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 1675
    aget v1, p0, v5

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v6

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 1676
    aget v1, p0, v7

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v10

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v10

    .line 1677
    return-object v0
.end method

.method private static mul3x3Diag([F[F)[F
    .locals 7
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1714
    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    aput v4, v0, v3

    aget v4, p0, v1

    const/4 v5, 0x3

    aget v6, p1, v5

    mul-float/2addr v4, v6

    aput v4, v0, v5

    aget v4, p0, v2

    const/4 v5, 0x4

    aget v6, p1, v5

    mul-float/2addr v4, v6

    aput v4, v0, v5

    aget v4, p0, v3

    const/4 v5, 0x5

    aget v6, p1, v5

    mul-float/2addr v4, v6

    aput v4, v0, v5

    aget v1, p0, v1

    const/4 v4, 0x6

    aget v5, p1, v4

    mul-float/2addr v1, v5

    aput v1, v0, v4

    aget v1, p0, v2

    const/4 v2, 0x7

    aget v4, p1, v2

    mul-float/2addr v1, v4

    aput v1, v0, v2

    aget v1, p0, v3

    const/16 v2, 0x8

    aget v3, p1, v2

    mul-float/2addr v1, v3

    aput v1, v0, v2

    return-object v0
.end method

.method private static mul3x3Float3([F[F)[F
    .locals 8
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1692
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1693
    .local v1, "r0":F
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 1694
    .local v3, "r1":F
    const/4 v4, 0x2

    aget v5, p1, v4

    .line 1695
    .local v5, "r2":F
    aget v6, p0, v0

    mul-float/2addr v6, v1

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, p1, v0

    .line 1696
    aget v0, p0, v2

    mul-float/2addr v0, v1

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    aput v0, p1, v2

    .line 1697
    aget v0, p0, v4

    mul-float/2addr v0, v1

    const/4 v2, 0x5

    aget v2, p0, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    aput v0, p1, v4

    .line 1698
    return-object p1
.end method

.method private static rcpResponse(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1547
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    goto :goto_0

    :cond_0
    div-double v0, p0, p6

    :goto_0
    return-wide v0
.end method

.method private static rcpResponse(DDDDDDDD)D
    .locals 8
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .line 1558
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    sub-double v2, p0, p10

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, p14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v2, p4

    div-double/2addr v2, p2

    move-wide v6, v2

    goto :goto_0

    :cond_0
    sub-double v6, p0, p12

    div-double/2addr v6, p6

    :goto_0
    return-wide v6
.end method

.method private static response(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1552
    cmpl-double v0, p0, p8

    if-ltz v0, :cond_0

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    invoke-static {v0, v1, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    mul-double v0, p6, p0

    :goto_0
    return-wide v0
.end method

.method private static response(DDDDDDDD)D
    .locals 8
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .line 1564
    cmpl-double v0, p0, p8

    if-ltz v0, :cond_0

    mul-double v1, p2, p0

    add-double/2addr v1, p4

    move-wide/from16 v3, p14

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double v1, v1, p10

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p14

    mul-double v5, p6, p0

    add-double v5, v5, p12

    :goto_0
    return-wide v5
.end method

.method private static xyYToUv([F)V
    .locals 7
    .param p0, "xyY"    # [F

    .line 1743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1744
    aget v1, p0, v0

    .line 1745
    .local v1, "x":F
    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    .line 1747
    .local v2, "y":F
    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    .line 1748
    .local v3, "d":F
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v1

    div-float/2addr v4, v3

    .line 1749
    .local v4, "u":F
    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 1751
    .local v5, "v":F
    aput v4, p0, v0

    .line 1752
    add-int/lit8 v6, v0, 0x1

    aput v5, p0, v6

    .line 1743
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "d":F
    .end local v4    # "u":F
    .end local v5    # "v":F
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1754
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static xyYToXyz([F)[F
    .locals 5
    .param p0, "xyY"    # [F

    .line 1731
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    aget v1, p0, v1

    sub-float/2addr v2, v1

    aget v1, p0, v3

    sub-float/2addr v2, v1

    aget v1, p0, v3

    div-float/2addr v2, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1147
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1149
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace;

    .line 1151
    .local v2, "that":Landroid/graphics/ColorSpace;
    iget v3, p0, Landroid/graphics/ColorSpace;->mId:I

    iget v4, v2, Landroid/graphics/ColorSpace;->mId:I

    if-eq v3, v4, :cond_2

    return v1

    .line 1153
    :cond_2
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 1154
    :cond_3
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    iget-object v4, v2, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 1147
    .end local v2    # "that":Landroid/graphics/ColorSpace;
    :cond_5
    :goto_1
    return v1
.end method

.method public fromXyz(FFF)[F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 1092
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    new-array v0, v0, [F

    .line 1093
    .local v0, "xyz":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1094
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1095
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1096
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method

.method public abstract fromXyz([F)[F
.end method

.method public getComponentCount()I
    .locals 1

    .line 960
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 933
    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    return v0
.end method

.method public abstract getMaxValue(I)F
.end method

.method public abstract getMinValue(I)F
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .locals 1

    .line 946
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 921
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1160
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1161
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Model;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1162
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    add-int/2addr v1, v0

    .line 1163
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isSrgb()Z
    .locals 1

    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isWideGamut()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/ColorSpace;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXyz(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 1050
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method public abstract toXyz([F)[F
.end method
