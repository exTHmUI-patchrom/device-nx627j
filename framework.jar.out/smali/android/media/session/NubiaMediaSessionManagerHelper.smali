.class public Landroid/media/session/NubiaMediaSessionManagerHelper;
.super Ljava/lang/Object;
.source "NubiaMediaSessionManagerHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Landroid/media/session/NubiaMediaSessionManagerHelper;->initList()V

    .line 18
    return-void
.end method

.method private initList()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    .line 22
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "cn.nubia.launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "cn.nubia.minilauncher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "cn.nubia.zbiglauncher.preset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "cn.nubia.ultrapower.launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "com.google.android.gts.deviceowner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    const-string v1, "com.android.cts.deviceandprofileowner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public isCallerInList(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 32
    iget-object v0, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mList:Ljava/util/List;

    iget-object v1, p0, Landroid/media/session/NubiaMediaSessionManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
