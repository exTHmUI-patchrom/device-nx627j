.class Lcom/android/internal/app/MediaRouteControllerDialog$2$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/MediaRouteControllerDialog$2;

    .line 166
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$302(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$2;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 173
    :cond_0
    return-void
.end method
