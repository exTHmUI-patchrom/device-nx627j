.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;
.super Ljava/lang/Object;
.source "NetWorkDetectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheData"
.end annotation


# instance fields
.field public count:I

.field public isAccess:Z

.field final synthetic this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    .line 61
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    .line 62
    return-void
.end method


# virtual methods
.method public isRepeatAgain()Z
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
