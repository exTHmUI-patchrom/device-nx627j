.class Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
.super Ljava/lang/Object;
.source "SysStateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SysStateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopApp"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "pidTmp"    # I

    .line 46
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    .line 49
    iput p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->pid:I

    .line 50
    return-void
.end method
