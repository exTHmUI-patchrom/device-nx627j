.class Lcn/nubia/server/appmgmt/PreLaunchController$1;
.super Ljava/util/HashMap;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v0, "com.tencent.mm"

    new-instance v1, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;

    const-string v2, "com.tencent.mm.account"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "com.eg.android.AlipayGphone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
