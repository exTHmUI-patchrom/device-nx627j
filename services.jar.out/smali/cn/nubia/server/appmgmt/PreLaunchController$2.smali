.class Lcn/nubia/server/appmgmt/PreLaunchController$2;
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
        "Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v0, "com.tencent.mm"

    new-instance v1, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;

    const-string v2, "com.tencent.mm/.ui.LauncherUI"

    const-string v3, "com.tencent.mm/.plugin.account.ui.LoginPasswordUI"

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
