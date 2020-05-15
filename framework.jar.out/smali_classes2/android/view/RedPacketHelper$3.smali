.class Landroid/view/RedPacketHelper$3;
.super Ljava/lang/Object;
.source "RedPacketHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RedPacketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/RedPacketHelper;


# direct methods
.method constructor <init>(Landroid/view/RedPacketHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/RedPacketHelper;

    .line 86
    iput-object p1, p0, Landroid/view/RedPacketHelper$3;->this$0:Landroid/view/RedPacketHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$302(Z)Z

    .line 90
    iget-object v0, p0, Landroid/view/RedPacketHelper$3;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$500(Landroid/view/RedPacketHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/view/RedPacketHelper$3;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$600(Landroid/view/RedPacketHelper;)V

    .line 93
    :cond_0
    return-void
.end method
