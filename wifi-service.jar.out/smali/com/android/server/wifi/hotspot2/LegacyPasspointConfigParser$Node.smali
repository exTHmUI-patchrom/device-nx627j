.class abstract Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
.super Ljava/lang/Object;
.source "LegacyPasspointConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Node"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->mName:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;",
            ">;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
