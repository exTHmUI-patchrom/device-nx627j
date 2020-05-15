.class Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;
.super Ljava/lang/Object;
.source "GameKeyMapGuideDialog.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 81
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .line 123
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "state"    # F
    .param p3, "num"    # I

    .line 120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 85
    rem-int/lit8 v0, p1, 0x4

    const v1, 0x307006e

    const v2, 0x307006f

    packed-switch v0, :pswitch_data_0

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 103
    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 97
    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    nop

    .line 117
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
