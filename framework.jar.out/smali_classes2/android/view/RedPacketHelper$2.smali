.class Landroid/view/RedPacketHelper$2;
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

    .line 79
    iput-object p1, p0, Landroid/view/RedPacketHelper$2;->this$0:Landroid/view/RedPacketHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/view/RedPacketHelper$2;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v0}, Landroid/view/RedPacketHelper;->access$400(Landroid/view/RedPacketHelper;)V

    .line 83
    return-void
.end method
