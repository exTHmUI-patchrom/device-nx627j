.class Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/GestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 244
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 245
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 7

    .line 249
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->access$400(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "nubia_edge_enable_czone"

    .line 251
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    :cond_0
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 255
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v5}, Lcn/nubia/server/policy/edge/GestureSettings;->access$400(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 256
    invoke-static {}, Lcn/nubia/server/policy/edge/GestureSettings;->access$500()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 255
    invoke-virtual {v5, v6, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 262
    const-string/jumbo v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->access$400(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "nubia_edge_enable_czone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "enableCZone":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$600(Lcn/nubia/server/policy/edge/GestureSettings;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$600(Lcn/nubia/server/policy/edge/GestureSettings;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 267
    :cond_0
    return-void

    .line 269
    .end local v0    # "enableCZone":I
    :cond_1
    const-string v0, "GestureSettings"

    const-string v2, "content change, onChange callback"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0, p2}, Lcn/nubia/server/policy/edge/GestureSettings;->access$700(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/net/Uri;)V

    .line 271
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 273
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 274
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/GestureSettings;->access$800(Lcn/nubia/server/policy/edge/GestureSettings;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 276
    const-string v5, "GestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_3
    return-void
.end method
