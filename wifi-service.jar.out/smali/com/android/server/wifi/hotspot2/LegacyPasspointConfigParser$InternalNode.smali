.class Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;
.super Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
.source "LegacyPasspointConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalNode"
.end annotation


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;-><init>(Ljava/lang/String;)V

    .line 136
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;->mChildren:Ljava/util/List;

    .line 137
    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
