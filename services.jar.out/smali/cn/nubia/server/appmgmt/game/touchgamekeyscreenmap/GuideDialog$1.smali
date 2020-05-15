.class Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog$1;
.super Ljava/lang/Object;
.source "GuideDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;

    .line 38
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/GuideDialog;)Landroid/view/View;

    .line 44
    return-void
.end method
