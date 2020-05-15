.class Landroid/net/util/PacketReader$1;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/util/PacketReader;->createAndRegisterFd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/PacketReader;


# direct methods
.method constructor <init>(Landroid/net/util/PacketReader;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/util/PacketReader;

    .line 183
    iput-object p1, p0, Landroid/net/util/PacketReader$1;->this$0:Landroid/net/util/PacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 189
    iget-object v0, p0, Landroid/net/util/PacketReader$1;->this$0:Landroid/net/util/PacketReader;

    invoke-static {v0}, Landroid/net/util/PacketReader;->access$000(Landroid/net/util/PacketReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/util/PacketReader$1;->this$0:Landroid/net/util/PacketReader;

    invoke-static {v0}, Landroid/net/util/PacketReader;->access$100(Landroid/net/util/PacketReader;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/util/PacketReader$1;->this$0:Landroid/net/util/PacketReader;

    invoke-static {v0}, Landroid/net/util/PacketReader;->access$200(Landroid/net/util/PacketReader;)V

    .line 191
    const/4 v0, 0x0

    return v0
.end method
