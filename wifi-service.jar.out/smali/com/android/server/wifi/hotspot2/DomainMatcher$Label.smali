.class Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/DomainMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field private mMatch:I

.field private final mSubDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "match"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 102
    const-string v0, ".{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    invoke-direct {v2, p1}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    .line 106
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;>;"
    goto :goto_0

    .line 107
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_1
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    :goto_1
    return-void
.end method


# virtual methods
.method public addDomain(Ljava/util/Iterator;I)V
    .locals 4
    .param p2, "match"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 65
    .local p1, "labels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "labelName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    .line 68
    .local v1, "subLabel":Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
    if-nez v1, :cond_0

    .line 69
    new-instance v2, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;-><init>(I)V

    move-object v1, v2

    .line 70
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;I)V

    goto :goto_0

    .line 78
    :cond_1
    iput p2, v1, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    .line 80
    :goto_0
    return-void
.end method

.method public getMatch()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    return v0
.end method

.method public getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
    .locals 1
    .param p1, "labelString"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
