.class Lcn/nubia/server/policy/edge/GestureSettings$2;
.super Landroid/os/AsyncTask;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/GestureSettings;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 119
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings$2;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/GestureSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 122
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$2;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->access$200(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/GestureSettings$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$2;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 128
    return-void
.end method
