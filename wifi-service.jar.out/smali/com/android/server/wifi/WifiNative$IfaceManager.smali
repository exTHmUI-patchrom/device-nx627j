.class Lcom/android/server/wifi/WifiNative$IfaceManager;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfaceManager"
.end annotation


# instance fields
.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/WifiNative$Iface;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiNative$1;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyIface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->getIface(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->getIface(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->findAnyIfaceOfType(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyStaIface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->allocateIface(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->getIfaceIdIter()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->findAnyStaIfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->findAnyApIfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyApIface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative$IfaceManager;
    .param p1, "x1"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->removeIface(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    return-object v0
.end method

.method private allocateIface(I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 3
    .param p1, "type"    # I

    .line 173
    new-instance v0, Lcom/android/server/wifi/WifiNative$Iface;

    iget v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mNextId:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/wifi/WifiNative$Iface;-><init>(II)V

    .line 174
    .local v0, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mNextId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mNextId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mNextId:I

    .line 176
    return-object v0
.end method

.method private findAnyApIfaceName()Ljava/lang/String;
    .locals 2

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->findAnyIfaceOfType(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    .line 249
    .local v0, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    return-object v1

    .line 252
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    return-object v1
.end method

.method private findAnyIfaceOfType(I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 3
    .param p1, "type"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$Iface;

    .line 222
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-ne v2, p1, :cond_0

    .line 223
    return-object v1

    .line 225
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :cond_0
    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findAnyStaIfaceName()Ljava/lang/String;
    .locals 2

    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->findAnyIfaceOfType(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    .line 241
    .local v0, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v0, :cond_0

    .line 242
    const/4 v1, 0x0

    return-object v1

    .line 244
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    return-object v1
.end method

.method private getIface(I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 2
    .param p1, "id"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiNative$Iface;

    return-object v0
.end method

.method private getIface(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$Iface;

    .line 192
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    return-object v1

    .line 195
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIfaceIdIter()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private hasAnyApIface()Z
    .locals 1

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result v0

    return v0
.end method

.method private hasAnyIface()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasAnyIfaceOfType(I)Z
    .locals 3
    .param p1, "type"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$Iface;

    .line 212
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-ne v2, p1, :cond_0

    .line 213
    const/4 v0, 0x1

    return v0

    .line 215
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasAnyStaIface()Z
    .locals 1

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result v0

    return v0
.end method

.method private removeIface(I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 2
    .param p1, "id"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiNative$Iface;

    return-object v0
.end method


# virtual methods
.method public removeExistingIface(I)Lcom/android/server/wifi/WifiNative$Iface;
    .locals 4
    .param p1, "newIfaceId"    # I

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "removedIface":Lcom/android/server/wifi/WifiNative$Iface;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 260
    const-string v1, "WifiNative"

    const-string v2, "More than 1 existing interface found"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/WifiNative$Iface;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/WifiNative$Iface;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 266
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wifi/WifiNative$Iface;

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 269
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/WifiNative$Iface;>;"
    :cond_1
    goto :goto_0

    .line 270
    :cond_2
    return-object v0
.end method
