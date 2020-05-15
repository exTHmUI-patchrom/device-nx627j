.class public Landroid/view/NubiaInput;
.super Ljava/lang/Object;
.source "NubiaInput.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaInput"

.field public static sInstance:Landroid/view/NubiaInput;


# instance fields
.field private mIam:Landroid/app/IActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Landroid/view/NubiaInput;->init()V

    .line 33
    return-void
.end method

.method public static getInstance()Landroid/view/NubiaInput;
    .locals 2

    .line 21
    sget-object v0, Landroid/view/NubiaInput;->sInstance:Landroid/view/NubiaInput;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Landroid/view/NubiaInput;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Landroid/view/NubiaInput;->sInstance:Landroid/view/NubiaInput;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Landroid/view/NubiaInput;

    invoke-direct {v1}, Landroid/view/NubiaInput;-><init>()V

    sput-object v1, Landroid/view/NubiaInput;->sInstance:Landroid/view/NubiaInput;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Landroid/view/NubiaInput;->sInstance:Landroid/view/NubiaInput;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 36
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NubiaInput;->mIam:Landroid/app/IActivityManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getFreeformStackBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p0}, Landroid/view/NubiaInput;->isInFreeformMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 52
    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/NubiaInput;->mIam:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 56
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    const-string v1, "NubiaInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeformStackBounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isInFreeformMode()Z
    .locals 3

    .line 40
    const/4 v0, 0x0

    move v1, v0

    .line 42
    .local v1, "focusedMode":I
    :try_start_0
    iget-object v2, p0, Landroid/view/NubiaInput;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedWindowMode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method
