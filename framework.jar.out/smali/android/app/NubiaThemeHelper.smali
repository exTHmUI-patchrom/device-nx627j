.class public Landroid/app/NubiaThemeHelper;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NubiaThemeHelper$UnitEntry;
    }
.end annotation


# static fields
.field private static final ICON_ADAPT_URI:Ljava/lang/String; = "content://cn.nubia.theme.iconadapt.settings"

.field private static final ICON_METHOD_NAME:Ljava/lang/String; = "IconAdpater"

.field public static final NUBIA_RES_PATH:Ljava/lang/String; = "/system/framework/framework-nubia-res.apk"

.field private static final NUBIA_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static final sFloatOut:[F

.field private static final sFloatPattern:Ljava/util/regex/Pattern;

.field private static final sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 360
    const-string v0, "(-?[0-9]+(?:\\.[0-9]+)?)(.*)"

    .line 361
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    .line 362
    const/4 v0, 0x1

    new-array v1, v0, [F

    sput-object v1, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    .line 378
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/app/NubiaThemeHelper$UnitEntry;

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "px"

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "dip"

    invoke-direct {v2, v3, v6, v0, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "dp"

    invoke-direct {v2, v3, v6, v0, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v7, "sp"

    invoke-direct {v2, v7, v6, v3, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v7, "pt"

    invoke-direct {v2, v7, v6, v3, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v7, "in"

    invoke-direct {v2, v7, v6, v3, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "mm"

    invoke-direct {v2, v3, v6, v6, v5}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v5, "%"

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v5, v3, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v4, "%p"

    invoke-direct {v2, v4, v3, v0, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    const/16 v0, 0x8

    aput-object v2, v1, v0

    sput-object v1, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .line 57
    const-string v0, "/system/framework/framework-nubia-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method private static applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V
    .locals 2
    .param p0, "unit"    # Landroid/app/NubiaThemeHelper$UnitEntry;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .line 530
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    iput v0, p1, Landroid/util/TypedValue;->type:I

    .line 531
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    const/4 v1, 0x0

    shl-int/2addr v0, v1

    iput v0, p1, Landroid/util/TypedValue;->data:I

    .line 532
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    aput v0, p2, v1

    .line 533
    return-void
.end method

.method private static computeTypedValue(Landroid/util/TypedValue;FF)V
    .locals 9
    .param p0, "outValue"    # Landroid/util/TypedValue;
    .param p1, "value"    # F
    .param p2, "scale"    # F

    .line 476
    mul-float/2addr p1, p2

    .line 477
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 478
    .local v0, "neg":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 479
    neg-float p1, p1

    .line 481
    :cond_1
    const/high16 v1, 0x4b000000    # 8388608.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-long v1, v1

    .line 484
    .local v1, "bits":J
    const-wide/32 v3, 0x7fffff

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, "radix":I
    const/16 v4, 0x17

    .local v4, "shift":I
    :goto_1
    goto :goto_2

    .line 489
    .end local v3    # "radix":I
    .end local v4    # "shift":I
    :cond_2
    const-wide/32 v3, -0x800000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 491
    const/4 v3, 0x3

    .line 492
    .restart local v3    # "radix":I
    const/4 v4, 0x0

    goto :goto_1

    .line 493
    .end local v3    # "radix":I
    :cond_3
    const-wide/32 v3, -0x80000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 495
    const/4 v3, 0x2

    .line 496
    .restart local v3    # "radix":I
    const/16 v4, 0x8

    goto :goto_1

    .line 497
    .end local v3    # "radix":I
    :cond_4
    const-wide v3, -0x8000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 499
    const/4 v3, 0x1

    .line 500
    .restart local v3    # "radix":I
    const/16 v4, 0x10

    goto :goto_1

    .line 503
    .end local v3    # "radix":I
    :cond_5
    const/4 v3, 0x0

    .line 504
    .restart local v3    # "radix":I
    const/16 v4, 0x17

    .line 506
    .restart local v4    # "shift":I
    :goto_2
    shr-long v5, v1, v4

    const-wide/32 v7, 0xffffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    .line 507
    .local v5, "mantissa":I
    if-eqz v0, :cond_6

    .line 508
    neg-int v6, v5

    const v7, 0xffffff

    and-int v5, v6, v7

    .line 510
    :cond_6
    iget v6, p0, Landroid/util/TypedValue;->data:I

    shl-int/lit8 v7, v3, 0x4

    shl-int/lit8 v8, v5, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Landroid/util/TypedValue;->data:I

    .line 512
    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "from"    # Landroid/content/res/Configuration;
    .param p1, "to"    # Landroid/content/res/Configuration;

    .line 62
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v1, v1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 63
    return-void
.end method

.method private static generateIconDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "retDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 253
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 256
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getBatchLoadIcon(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/content/pm/PackageItemInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 101
    .local p0, "listPackageItemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/content/pm/PackageItemInfo;>;"
    move-object/from16 v1, p0

    .line 101
    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 102
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "listPackageName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v3, "listIconId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "listParcelInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    move v6, v5

    .line 105
    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 106
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageItemInfo;

    .line 107
    .local v7, "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    move-object v8, v7

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v7    # "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v6    # "i":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 113
    .local v6, "listDrawable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, 0x0

    .line 114
    .local v7, "providerClient":Landroid/content/ContentProviderClient;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 115
    .local v8, "bitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 116
    .local v9, "resNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 118
    .local v10, "resIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "package_item_info_list"

    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    const-string/jumbo v11, "package_name_list"

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    const-string v11, "icon_id_list"

    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11

    move-object v7, v11

    .line 123
    const-string v11, "IconAdpater"

    const-string v12, "getBatchIconFromCache"

    invoke-virtual {v7, v11, v12, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 124
    .local v11, "resultBundle":Landroid/os/Bundle;
    const-string v12, "bitmap_list"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v8, v12

    .line 128
    nop

    .line 128
    .local v5, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    .line 129
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 130
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 131
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageItemInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 132
    .local v13, "packageName":Ljava/lang/String;
    invoke-static {v13}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 133
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_2

    .line 134
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v16, v0

    goto :goto_2

    .line 136
    :cond_2
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v16, "bundle":Landroid/os/Bundle;
    invoke-direct {v15, v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v15

    .line 137
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v16    # "bundle":Landroid/os/Bundle;
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v16, v0

    .line 128
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .line 142
    .end local v5    # "i":I
    .end local v16    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v16, v0

    .line 142
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v11    # "resultBundle":Landroid/os/Bundle;
    .end local v16    # "bundle":Landroid/os/Bundle;
    goto :goto_3

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "IconUnity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getBatchLoadIcon Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    if-eqz v7, :cond_5

    .line 145
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 147
    :cond_5
    const-string v5, "IconUnity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getBatchLoadIcon RemoteException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    nop

    .line 151
    :goto_4
    return-object v6
.end method

.method public static getBatchLoadIconForResolve(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 155
    .local p0, "listResolveInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 156
    .local v2, "listPackageName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 157
    .local v3, "listIconId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 158
    .local v4, "listParcelInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v0, 0x0

    move v5, v0

    .line 158
    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 159
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 160
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 162
    .local v7, "packageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget v8, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 164
    .local v8, "iconId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "iconId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v5, "listDrawable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, 0x0

    .line 169
    .local v6, "providerClient":Landroid/content/ContentProviderClient;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, "bitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v8, "resNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v9, "resIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "package_item_info_list"

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    const-string/jumbo v11, "package_name_list"

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    const-string v11, "icon_id_list"

    invoke-virtual {v10, v11, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11

    move-object v6, v11

    .line 180
    const-string v11, "IconAdpater"

    const-string v12, "getBatchIconFromCache"

    invoke-virtual {v6, v11, v12, v10}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 181
    .local v11, "resultBundle":Landroid/os/Bundle;
    const-string v12, "bitmap_list"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v7, v12

    .line 185
    nop

    .line 185
    .local v0, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_4

    .line 186
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 187
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 189
    .local v13, "packageName":Ljava/lang/String;
    invoke-static {v13}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 190
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_2

    .line 191
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 193
    :cond_2
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v15, v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v15

    .line 194
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_2

    .line 200
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "resultBundle":Landroid/os/Bundle;
    goto :goto_4

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IconUnity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBatchLoadIconForResolve Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 205
    :cond_5
    const-string v1, "IconUnity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBatchLoadIconForResolve RemoteException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    nop

    .line 209
    :goto_5
    return-object v5
.end method

.method public static getDrawable(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "iconId"    # I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/NubiaThemeHelper;->getIconFromApp(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method private static getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "fancyDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v1, "cn.nubia.calendar.preset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lnubia/fancydrawable/DateDrawable;

    invoke-direct {v1}, Lnubia/fancydrawable/DateDrawable;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 239
    :cond_0
    const-string v1, "cn.nubia.deskclock.preset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Lnubia/fancydrawable/TimeDrawable;

    invoke-direct {v1}, Lnubia/fancydrawable/TimeDrawable;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 241
    :cond_1
    const-string v1, "cn.nubia.weather"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnubia/os/IconUnityUtil;->isDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    new-instance v1, Lnubia/fancydrawable/WeatherDrawable;

    invoke-direct {v1}, Lnubia/fancydrawable/WeatherDrawable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 247
    :cond_2
    :goto_0
    goto :goto_1

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static getIconFromApp(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "iconId"    # I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 77
    .local v1, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "package_item_info"

    move-object v4, p0

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v3, "application_info"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "icon_id"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    move-object v1, v3

    .line 83
    const-string v3, "IconAdpater"

    const-string v4, "getIconDrawableFromChache"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 84
    .local v3, "resultBundle":Landroid/os/Bundle;
    const-string v4, "bitmap"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 85
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 86
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v5

    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "resultBundle":Landroid/os/Bundle;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "IconUnity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconFromApp Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 89
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 93
    :cond_1
    const-string v3, "IconUnity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconFromApp RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 97
    :goto_1
    return-object v0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .line 266
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lnubia/content/res/IconCustomizer;->clearCache()V

    .line 272
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0}, Lnubia/content/res/ExtraConfiguration;->needReloadFont()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Landroid/graphics/Typeface;->reload()V

    .line 275
    :cond_1
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 293
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-static {p0, p1}, Landroid/app/NubiaThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 297
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .param p0, "changed"    # I

    .line 306
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 4
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .line 310
    if-eqz p0, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 312
    const-string v2, "android.intent.category.LAUNCHER"

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isPackageCloned(Ljava/lang/String;)Z
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    move v1, v0

    .line 216
    .local v1, "isCloned":Z
    :try_start_0
    const-string v2, "com.cmx.cmplus.SmartContainerManagerNative"

    .line 217
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 218
    .local v2, "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 219
    .local v3, "get":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 220
    .local v4, "smartContainer":Ljava/lang/Object;
    const-string v5, "com.cmx.cmplus.ISmartContainerManager"

    .line 221
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 222
    .local v5, "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "isPackageCloned"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 224
    .local v6, "isPackageCloned":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 225
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v0

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "isCloned":Z
    .end local v2    # "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "smartContainer":Ljava/lang/Object;
    .end local v5    # "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "isPackageCloned":Ljava/lang/reflect/Method;
    .local v0, "isCloned":Z
    move v1, v0

    .line 230
    .end local v0    # "isCloned":Z
    .restart local v1    # "isCloned":Z
    :cond_0
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .line 327
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changed"    # I
    .param p2, "cfg"    # Landroid/content/res/Configuration;

    .line 343
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 344
    invoke-static {p0}, Lnubia/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 345
    invoke-static {p0, v0, v1}, Lnubia/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 356
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/NubiaThemeHelper;->parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "requireUnit"    # Z

    .line 408
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 410
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 413
    .local v1, "len":I
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 414
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 418
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 419
    .local v3, "buf":[C
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 420
    aget-char v5, v3, v4

    const/16 v6, 0xff

    if-le v5, v6, :cond_1

    .line 421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 419
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    .end local v4    # "i":I
    :cond_2
    aget-char v4, v3, v2

    const/16 v5, 0x30

    if-ge v4, v5, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 431
    :cond_3
    sget-object v4, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 432
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 433
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "f_str":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "end":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .local v8, "f":F
    nop

    .line 441
    nop

    .line 444
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    .line 446
    sget-object v5, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v7, v0, v5}, Landroid/app/NubiaThemeHelper;->parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 447
    sget-object v5, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v2, v5, v2

    invoke-static {v0, v8, v2}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    .line 448
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 450
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 454
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 456
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 457
    nop

    .line 458
    if-nez p1, :cond_6

    .line 459
    const/4 v2, 0x4

    iput v2, v0, Landroid/util/TypedValue;->type:I

    .line 460
    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->data:I

    goto :goto_1

    .line 463
    :cond_6
    sget-object v9, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    aget-object v5, v9, v5

    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v5, v0, v9}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 464
    sget-object v5, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v2, v5, v2

    invoke-static {v0, v8, v2}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    .line 466
    :goto_1
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 439
    .end local v8    # "f":F
    :catch_0
    move-exception v5

    .line 441
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 471
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "f_str":Ljava/lang/String;
    .end local v7    # "end":Ljava/lang/String;
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private static parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 518
    sget-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 519
    .local v4, "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    iget-object v5, v4, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 520
    invoke-static {v4, p1, p2}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 521
    const/4 v0, 0x1

    return v0

    .line 518
    .end local v4    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_1
    return v2
.end method
