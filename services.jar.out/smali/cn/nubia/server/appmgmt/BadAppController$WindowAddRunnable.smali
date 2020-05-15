.class Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;
.super Ljava/lang/Object;
.source "BadAppController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/BadAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowAddRunnable"
.end annotation


# instance fields
.field private mPid:I

.field private mPkg:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/BadAppController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/BadAppController;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/BadAppController;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->this$0:Lcn/nubia/server/appmgmt/BadAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mPid:I

    .line 78
    iput p3, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mUid:I

    .line 79
    iput-object p4, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mPkg:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->this$0:Lcn/nubia/server/appmgmt/BadAppController;

    iget v1, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mPid:I

    iget v2, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mUid:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/BadAppController;->access$300(Lcn/nubia/server/appmgmt/BadAppController;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    :goto_0
    return-void
.end method
