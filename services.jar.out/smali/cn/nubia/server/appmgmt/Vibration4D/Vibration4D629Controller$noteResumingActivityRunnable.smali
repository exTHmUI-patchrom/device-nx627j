.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "Vibration4D629Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "noteResumingActivityRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mUid:I

    .line 206
    iput p3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mStackId:I

    .line 207
    iput-object p4, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    const-string v2, "ResumingActivity"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$500(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    const-string v2, "ResumingActivity"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    const-string v2, "ResumingActivity"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$700(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method
