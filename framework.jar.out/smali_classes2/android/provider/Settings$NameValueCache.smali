.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1983
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1990
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 2005
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 2006
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 2007
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 2008
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 2009
    return-void
.end method

.method public static synthetic lambda$getStringForUser$0(Landroid/provider/Settings$NameValueCache;)V
    .locals 2

    .line 2127
    monitor-enter p0

    .line 2128
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2133
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2134
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2135
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2137
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 2138
    return-void

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .locals 1

    .line 2204
    monitor-enter p0

    .line 2205
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2208
    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2210
    monitor-exit p0

    .line 2211
    return-void

    .line 2210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 22
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2033
    move/from16 v3, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v5, 0x0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    .line 2034
    .local v6, "isSelf":Z
    const/4 v7, -0x1

    .line 2035
    .local v7, "currentGeneration":I
    if-eqz v6, :cond_4

    .line 2036
    monitor-enter p0

    .line 2037
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_3

    .line 2038
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 2045
    :cond_1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2046
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 2048
    :cond_2
    :goto_1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_3

    .line 2049
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    .line 2052
    .end local v7    # "currentGeneration":I
    .local v0, "currentGeneration":I
    move v7, v0

    .line 2052
    .end local v0    # "currentGeneration":I
    .restart local v7    # "currentGeneration":I
    :cond_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2058
    :cond_4
    :goto_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v15

    .line 2064
    .local v15, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v0, :cond_e

    .line 2066
    const/4 v0, 0x0

    .line 2067
    .local v0, "args":Landroid/os/Bundle;
    if-nez v6, :cond_5

    .line 2068
    :try_start_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v0, v9

    .line 2069
    const-string v9, "_user"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 2155
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 2071
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_5
    :goto_3
    move-object v9, v0

    .line 2071
    .end local v0    # "args":Landroid/os/Bundle;
    .local v9, "args":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 2072
    .local v10, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2073
    if-eqz v6, :cond_7

    :try_start_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_7

    .line 2074
    const/4 v10, 0x1

    .line 2075
    if-nez v9, :cond_6

    .line 2076
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2078
    .end local v9    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    move-object v9, v0

    .line 2078
    .end local v0    # "args":Landroid/os/Bundle;
    .restart local v9    # "args":Landroid/os/Bundle;
    :cond_6
    const-string v0, "_track_generation"

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2085
    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_7
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2093
    :try_start_3
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-eq v0, v11, :cond_8

    .line 2094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2096
    .local v11, "token":J
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v13, v2, v9}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2098
    .local v0, "b":Landroid/os/Bundle;
    :try_start_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    nop

    .line 2098
    .end local v11    # "token":J
    nop

    .line 2100
    goto :goto_5

    .line 2098
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v11    # "token":J
    :catchall_2
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2101
    .end local v11    # "token":J
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v11, v2, v9}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2101
    .restart local v0    # "b":Landroid/os/Bundle;
    :goto_5
    move-object v11, v0

    .line 2103
    .end local v0    # "b":Landroid/os/Bundle;
    .local v11, "b":Landroid/os/Bundle;
    if-eqz v11, :cond_d

    .line 2104
    const-string/jumbo v0, "value"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 2106
    .local v12, "value":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 2107
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2108
    if-eqz v10, :cond_a

    .line 2109
    :try_start_6
    const-string v0, "_track_generation"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 2111
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v13, "_generation_index"

    const/4 v4, -0x1

    invoke-virtual {v11, v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2113
    .local v4, "index":I
    if-eqz v0, :cond_a

    if-ltz v4, :cond_a

    .line 2114
    const-string v13, "_generation"

    invoke-virtual {v11, v13, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2122
    .local v13, "generation":I
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v5, :cond_9

    .line 2123
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2125
    :cond_9
    new-instance v5, Landroid/provider/Settings$GenerationTracker;

    new-instance v14, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;

    invoke-direct {v14, v1}, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v5, v0, v4, v13, v14}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2125
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v4    # "index":I
    .end local v13    # "generation":I
    goto :goto_6

    .line 2145
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 2141
    :cond_a
    :goto_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_b

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2142
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v7, v0, :cond_b

    .line 2143
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :cond_b
    monitor-exit p0

    goto :goto_8

    :goto_7
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2151
    :cond_c
    :goto_8
    return-object v12

    .line 2158
    .end local v9    # "args":Landroid/os/Bundle;
    .end local v10    # "needsGenerationTracker":Z
    .end local v11    # "b":Landroid/os/Bundle;
    .end local v12    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_b

    .line 2085
    .restart local v9    # "args":Landroid/os/Bundle;
    .restart local v10    # "needsGenerationTracker":Z
    :goto_9
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2155
    .end local v9    # "args":Landroid/os/Bundle;
    .end local v10    # "needsGenerationTracker":Z
    :goto_a
    nop

    .line 2161
    :cond_e
    :goto_b
    const/4 v4, 0x0

    move-object v5, v4

    .line 2163
    .local v5, "c":Landroid/database/Cursor;
    :try_start_a
    const-string/jumbo v0, "name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v0, v9, v4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 2166
    .local v13, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    if-eqz v0, :cond_f

    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-eq v0, v9, :cond_f

    .line 2167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-wide v11, v9

    .line 2169
    .local v11, "token":J
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v14, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/16 v16, 0x0

    move-object v9, v15

    move-object/from16 v21, v5

    move-wide v4, v11

    move-object v11, v0

    .line 2169
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v11    # "token":J
    .local v4, "token":J
    .local v21, "c":Landroid/database/Cursor;
    move-object v12, v14

    const/16 v20, 0x0

    move-object/from16 v14, v16

    :try_start_d
    invoke-interface/range {v9 .. v14}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object v9, v0

    .line 2172
    .end local v21    # "c":Landroid/database/Cursor;
    .local v9, "c":Landroid/database/Cursor;
    :try_start_e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2173
    nop

    .line 2174
    .end local v4    # "token":J
    nop

    .line 2178
    move-object v5, v15

    goto :goto_d

    .line 2199
    .end local v13    # "queryArgs":Landroid/os/Bundle;
    :catchall_4
    move-exception v0

    move-object v5, v15

    goto/16 :goto_12

    .line 2195
    :catch_1
    move-exception v0

    move-object v5, v15

    goto/16 :goto_11

    .line 2172
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v4    # "token":J
    .restart local v13    # "queryArgs":Landroid/os/Bundle;
    .restart local v21    # "c":Landroid/database/Cursor;
    :catchall_5
    move-exception v0

    goto :goto_c

    .line 2172
    .end local v4    # "token":J
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v11    # "token":J
    :catchall_6
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-wide v4, v11

    .line 2172
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v11    # "token":J
    .restart local v4    # "token":J
    .restart local v21    # "c":Landroid/database/Cursor;
    :goto_c
    :try_start_f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 2199
    .end local v4    # "token":J
    .end local v13    # "queryArgs":Landroid/os/Bundle;
    :catchall_7
    move-exception v0

    move-object v5, v15

    goto/16 :goto_f

    .line 2195
    :catch_2
    move-exception v0

    move-object v5, v15

    goto/16 :goto_10

    .line 2199
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :catchall_8
    move-exception v0

    move-object/from16 v21, v5

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2199
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v21    # "c":Landroid/database/Cursor;
    goto/16 :goto_12

    .line 2195
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2195
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v21    # "c":Landroid/database/Cursor;
    goto/16 :goto_11

    .line 2175
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v13    # "queryArgs":Landroid/os/Bundle;
    :cond_f
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 2175
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v21    # "c":Landroid/database/Cursor;
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v17, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    const/16 v19, 0x0

    move-object v14, v15

    move-object v5, v15

    move-object v15, v0

    .line 2175
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v5, "cp":Landroid/content/IContentProvider;
    move-object/from16 v16, v4

    move-object/from16 v18, v13

    :try_start_11
    invoke-interface/range {v14 .. v19}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 2178
    .end local v21    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    move-object v9, v0

    .line 2178
    .end local v0    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :goto_d
    if-nez v9, :cond_11

    .line 2179
    :try_start_12
    const-string v0, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t get key "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 2180
    nop

    .line 2199
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2180
    :cond_10
    return-object v20

    .line 2195
    .end local v13    # "queryArgs":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    goto :goto_11

    .line 2183
    .restart local v13    # "queryArgs":Landroid/os/Bundle;
    :cond_11
    :try_start_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_12
    move-object/from16 v14, v20

    :goto_e
    move-object v4, v14

    .line 2184
    .local v4, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 2185
    :try_start_14
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2186
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v7, v0, :cond_13

    .line 2187
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 2194
    nop

    .line 2199
    if-eqz v9, :cond_14

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2194
    :cond_14
    return-object v4

    .line 2189
    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    throw v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 2199
    .end local v4    # "value":Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "queryArgs":Landroid/os/Bundle;
    .restart local v21    # "c":Landroid/database/Cursor;
    :catchall_a
    move-exception v0

    .line 2199
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :goto_f
    move-object/from16 v9, v21

    goto :goto_12

    .line 2195
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v21    # "c":Landroid/database/Cursor;
    :catch_5
    move-exception v0

    .line 2195
    .end local v21    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :goto_10
    move-object/from16 v9, v21

    goto :goto_11

    .line 2199
    .end local v5    # "cp":Landroid/content/IContentProvider;
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v21    # "c":Landroid/database/Cursor;
    :catchall_b
    move-exception v0

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2199
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v5    # "cp":Landroid/content/IContentProvider;
    goto :goto_12

    .line 2195
    .end local v5    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catch_6
    move-exception v0

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2195
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v5    # "cp":Landroid/content/IContentProvider;
    goto :goto_11

    .line 2199
    .end local v21    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_c
    move-exception v0

    move-object/from16 v21, v5

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2199
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v5, "cp":Landroid/content/IContentProvider;
    .restart local v21    # "c":Landroid/database/Cursor;
    goto :goto_12

    .line 2195
    .end local v21    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catch_7
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object v5, v15

    move-object/from16 v9, v21

    .line 2196
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/RemoteException;
    .local v5, "cp":Landroid/content/IContentProvider;
    .restart local v9    # "c":Landroid/database/Cursor;
    :goto_11
    :try_start_17
    const-string v4, "Settings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t get key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 2197
    nop

    .line 2199
    if-eqz v9, :cond_15

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_15
    return-object v20

    .line 2199
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_d
    move-exception v0

    :goto_12
    if-eqz v9, :cond_16

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I

    .line 2014
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2015
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2017
    if-eqz p4, :cond_0

    .line 2018
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    :cond_0
    const/4 v1, 0x1

    if-eqz p5, :cond_1

    .line 2021
    const-string v2, "_make_default"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    :cond_1
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 2024
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    nop

    .line 2029
    return v1

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2027
    const/4 v1, 0x0

    return v1
.end method
