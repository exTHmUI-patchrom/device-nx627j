.class Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;
.super Ljava/lang/Object;
.source "TouchGameKeyMapViewNew.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 228
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "check"    # Z

    .line 231
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$402(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z

    .line 232
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    .line 233
    if-eqz p2, :cond_0

    .line 234
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;I)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setHouchHapticFeedbackEnable(Landroid/content/Context;Z)V

    .line 239
    return-void
.end method
