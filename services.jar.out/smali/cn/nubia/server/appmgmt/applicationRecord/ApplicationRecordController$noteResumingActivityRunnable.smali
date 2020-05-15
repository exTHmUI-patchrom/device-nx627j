.class Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "ApplicationRecordController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "noteResumingActivityRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mTime:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Ljava/lang/String;IJ)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "time"    # J

    .line 104
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 106
    iput-wide p4, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mTime:J

    .line 107
    iput p3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mUid:I

    .line 108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mUid:I

    iget-wide v3, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$noteResumingActivityRunnable;->mTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->access$000(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Ljava/lang/String;IJ)V

    .line 113
    return-void
.end method
