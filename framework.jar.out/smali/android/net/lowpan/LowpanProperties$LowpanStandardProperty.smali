.class final Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
.super Landroid/net/lowpan/LowpanProperty;
.source "LowpanProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LowpanStandardProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/lowpan/LowpanProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;, "Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/net/lowpan/LowpanProperty;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    .local p0, "this":Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;, "Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty<TT;>;"
    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;, "Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty<TT;>;"
    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    .local p0, "this":Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;, "Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty<TT;>;"
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
