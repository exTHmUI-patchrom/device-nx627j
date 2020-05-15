.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;
.super Ljava/lang/Object;
.source "Vibration4D619Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotePausingActivityRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->mUid:I

    .line 162
    iput-object p3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    const-string v2, "PausingActivity"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    const-string v2, "PausingActivity"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
