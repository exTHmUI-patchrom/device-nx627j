.class Landroid/view/RedPacketHelper$4;
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

    .line 96
    iput-object p1, p0, Landroid/view/RedPacketHelper$4;->this$0:Landroid/view/RedPacketHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/view/RedPacketHelper$4;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$700(Landroid/view/RedPacketHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/view/RedPacketHelper$4;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$800(Landroid/view/RedPacketHelper;)V

    .line 102
    :cond_0
    return-void
.end method
