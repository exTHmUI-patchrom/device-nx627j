.class Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;
.super Ljava/lang/Object;
.source "PasspointManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSourceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/hotspot2/PasspointManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointManager;
    .param p2, "x1"    # Lcom/android/server/wifi/hotspot2/PasspointManager$1;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;)V

    return-void
.end method


# virtual methods
.method public getProviderIndex()J
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$300(Lcom/android/server/wifi/hotspot2/PasspointManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$200(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    goto :goto_0

    .line 178
    :cond_0
    return-object v0
.end method

.method public setProviderIndex(J)V
    .locals 1
    .param p1, "providerIndex"    # J

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$302(Lcom/android/server/wifi/hotspot2/PasspointManager;J)J

    .line 197
    return-void
.end method

.method public setProviders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointProvider;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$200(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    .line 185
    .local v1, "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$200(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v1    # "provider":Lcom/android/server/wifi/hotspot2/PasspointProvider;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method
