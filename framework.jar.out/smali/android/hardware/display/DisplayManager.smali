.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field private static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field public static final VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x100

.field public static final VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final VIRTUAL_DISPLAY_FLAG_ROTATES_WITH_CONTENT:I = 0x80

.field public static final VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH:I = 0x40


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    .line 301
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 303
    return-void
.end method

.method private addAllDisplaysLocked(Ljava/util/ArrayList;[I)V
    .locals 3
    .param p2, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;[I)V"
        }
    .end annotation

    .line 365
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 366
    aget v1, p2, v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v1

    .line 367
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 3
    .param p2, "displayIds"    # [I
    .param p3, "matchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .line 375
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 376
    aget v1, p2, v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v1

    .line 377
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 380
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "assumeValid"    # Z

    .line 386
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 387
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_2

    .line 390
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 391
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 393
    .local v1, "context":Landroid/content/Context;
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1

    .line 395
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    const/4 v0, 0x0

    .line 400
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 470
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .locals 13
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "flags"    # I
    .param p8, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "uniqueId"    # Ljava/lang/String;

    move-object v0, p0

    .line 617
    iget-object v1, v0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, v0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I

    .line 559
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 608
    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 490
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public getAmbientBrightnessStats()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getAmbientBrightnessStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 693
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p1, "userId"    # I

    .line 706
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 720
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .line 315
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    .line 347
    .local v0, "displayIds":[I
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    if-nez p1, :cond_0

    .line 350
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Landroid/hardware/display/DisplayManager;->addAllDisplaysLocked(Ljava/util/ArrayList;[I)V

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 351
    :cond_0
    const-string v2, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 353
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 354
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 355
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {p0, v2, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 357
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    .line 357
    return-object v2

    .line 359
    :goto_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v2

    .line 361
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public getDoubleScreenMode()I
    .locals 1

    .line 805
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDoubleScreenMode()I

    move-result v0

    return v0
.end method

.method public getMinimumBrightnessCurve()Landroid/util/Pair;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 633
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .line 535
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public pauseWifiDisplay()V
    .locals 1

    .line 475
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 476
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 414
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 415
    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 508
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public resetScreenState()V
    .locals 1

    .line 809
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resetScreenState()V

    .line 810
    return-void
.end method

.method public resumeWifiDisplay()V
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 481
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 668
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 669
    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 682
    return-void
.end method

.method public setDisplayPowerMode(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "isOn"    # Z

    .line 797
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setDisplayPowerMode(IZ)V

    .line 798
    return-void
.end method

.method public setDisplayPowerModeForFingerprint(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "isOn"    # Z

    .line 819
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setDisplayPowerModeForFingerprint(IZ)V

    .line 820
    return-void
.end method

.method public setSaturationLevel(F)V
    .locals 1
    .param p1, "level"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 548
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setSaturationLevel(F)V

    .line 549
    return-void
.end method

.method public setScreenMirror(Z)V
    .locals 1
    .param p1, "enableMirror"    # Z

    .line 813
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setScreenMirror(Z)V

    .line 814
    return-void
.end method

.method public setScreenSwitch()V
    .locals 1

    .line 801
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->setScreenSwitch()V

    .line 802
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 1
    .param p1, "adjustment"    # F

    .line 748
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 749
    return-void
.end method

.method public setTemporaryBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 734
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(I)V

    .line 735
    return-void
.end method

.method public startWifiDisplayScan()V
    .locals 1

    .line 441
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    .line 442
    return-void
.end method

.method public stopWifiDisplayScan()V
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    .line 454
    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 425
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 426
    return-void
.end method
