.class Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;
.super Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
.source "LegacyPasspointConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeafNode"
.end annotation


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;-><init>(Ljava/lang/String;)V

    .line 157
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;->mValue:Ljava/lang/String;

    .line 158
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

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;->mValue:Ljava/lang/String;

    return-object v0
.end method
