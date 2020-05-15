.class public Lcom/android/server/wifi/hotspot2/DomainMatcher;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
    }
.end annotation


# static fields
.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_PRIMARY:I = 0x1

.field public static final MATCH_SECONDARY:I = 0x2


# instance fields
.field private final mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "primaryDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p2, "secondaryDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    .line 126
    if-eqz p2, :cond_1

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;I)V

    .line 132
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "primaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;I)V

    .line 140
    .end local v0    # "primaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public static arg2SubdomainOfArg1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "domain1"    # Ljava/lang/String;
    .param p1, "domain2"    # Ljava/lang/String;

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "labels1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "labels2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 197
    return v1

    .line 200
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 201
    .local v3, "l1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 203
    .local v4, "l2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    return v1

    .line 208
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 189
    .end local v0    # "labels1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "labels2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "l1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "l2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public isSubDomain(Ljava/lang/String;)I
    .locals 6
    .param p1, "domainName"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "domainLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    .line 165
    .local v1, "label":Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
    const/4 v2, 0x0

    .line 166
    .local v2, "match":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 167
    .local v4, "labelString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    move-result-object v1

    .line 168
    if-nez v1, :cond_1

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->getMatch()I

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->getMatch()I

    move-result v2

    .line 172
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 173
    goto :goto_1

    .line 176
    .end local v4    # "labelString":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 177
    :cond_3
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domain matcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
