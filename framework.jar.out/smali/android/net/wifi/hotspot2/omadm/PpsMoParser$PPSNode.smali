.class abstract Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PPSNode"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->mName:Ljava/lang/String;

    .line 247
    return-void
.end method


# virtual methods
.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isLeaf()Z
.end method
