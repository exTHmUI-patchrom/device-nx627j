.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .locals 6
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "properties"    # [I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 64
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 65
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 67
    array-length v0, p3

    .line 68
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 72
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v5, p3, v3

    invoke-direct {p0, v5, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v5

    aput-object v5, v4, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 77
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 78
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 83
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v1    # "type":I
    :sswitch_0
    const/4 v1, 0x6

    .line 159
    .restart local v1    # "type":I
    goto :goto_0

    .line 163
    .end local v1    # "type":I
    :sswitch_1
    const/4 v1, 0x4

    .line 164
    .restart local v1    # "type":I
    goto :goto_0

    .line 130
    .end local v1    # "type":I
    :sswitch_2
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_0

    .line 139
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "album_artist"

    .line 140
    const v1, 0xffff

    .line 141
    .restart local v1    # "type":I
    goto :goto_0

    .line 136
    .end local v1    # "type":I
    :sswitch_4
    const v1, 0xffff

    .line 137
    .restart local v1    # "type":I
    goto :goto_0

    .line 112
    .end local v1    # "type":I
    :sswitch_5
    const-string/jumbo v0, "year"

    .line 113
    const v1, 0xffff

    .line 114
    .restart local v1    # "type":I
    goto :goto_0

    .line 147
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "composer"

    .line 148
    const v1, 0xffff

    .line 149
    .restart local v1    # "type":I
    goto :goto_0

    .line 144
    .end local v1    # "type":I
    :sswitch_7
    const v1, 0xffff

    .line 145
    .restart local v1    # "type":I
    goto :goto_0

    .line 126
    .end local v1    # "type":I
    :sswitch_8
    const-string/jumbo v0, "track"

    .line 127
    const/4 v1, 0x4

    .line 128
    .restart local v1    # "type":I
    goto :goto_0

    .line 122
    .end local v1    # "type":I
    :sswitch_9
    const-string v0, "duration"

    .line 123
    const/4 v1, 0x6

    .line 124
    .restart local v1    # "type":I
    goto :goto_0

    .line 109
    .end local v1    # "type":I
    :sswitch_a
    const v1, 0xffff

    .line 110
    .restart local v1    # "type":I
    goto :goto_0

    .line 151
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "description"

    .line 152
    const v1, 0xffff

    .line 153
    .restart local v1    # "type":I
    goto :goto_0

    .line 133
    .end local v1    # "type":I
    :sswitch_c
    const v1, 0xffff

    .line 134
    .restart local v1    # "type":I
    goto :goto_0

    .line 103
    .end local v1    # "type":I
    :sswitch_d
    const v1, 0xffff

    .line 104
    .restart local v1    # "type":I
    goto :goto_0

    .line 119
    .end local v1    # "type":I
    :sswitch_e
    const/16 v1, 0xa

    .line 120
    .restart local v1    # "type":I
    goto :goto_0

    .line 116
    .end local v1    # "type":I
    :sswitch_f
    const/4 v1, 0x6

    .line 117
    .restart local v1    # "type":I
    goto :goto_0

    .line 106
    .end local v1    # "type":I
    :sswitch_10
    const v1, 0xffff

    .line 107
    .restart local v1    # "type":I
    goto :goto_0

    .line 100
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 101
    .restart local v1    # "type":I
    goto :goto_0

    .line 97
    .end local v1    # "type":I
    :sswitch_12
    const/16 v1, 0x8

    .line 98
    .restart local v1    # "type":I
    goto :goto_0

    .line 94
    .end local v1    # "type":I
    :sswitch_13
    const/4 v1, 0x4

    .line 95
    .restart local v1    # "type":I
    goto :goto_0

    .line 91
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x4

    .line 92
    .restart local v1    # "type":I
    goto :goto_0

    .line 88
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x6

    .line 89
    .restart local v1    # "type":I
    nop

    .line 171
    :goto_0
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 175
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_15
        0xdc02 -> :sswitch_14
        0xdc03 -> :sswitch_13
        0xdc04 -> :sswitch_12
        0xdc07 -> :sswitch_11
        0xdc09 -> :sswitch_10
        0xdc0b -> :sswitch_f
        0xdc41 -> :sswitch_e
        0xdc44 -> :sswitch_d
        0xdc46 -> :sswitch_c
        0xdc48 -> :sswitch_b
        0xdc4e -> :sswitch_a
        0xdc89 -> :sswitch_9
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_7
        0xdc96 -> :sswitch_6
        0xdc99 -> :sswitch_5
        0xdc9a -> :sswitch_4
        0xdc9b -> :sswitch_3
        0xdce0 -> :sswitch_2
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const-string v5, "_data=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 185
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_0
    return-object v1

    .line 188
    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_2
    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_3
    return-object v2

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_4

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private queryGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 205
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    return-object v1

    .line 208
    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_2
    return-object v1

    .line 213
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_3
    return-object v2

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_4

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public getPropertyList(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .locals 23
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "list"    # Landroid/mtp/MtpPropertyList;

    move-object/from16 v1, p0

    .line 225
    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 226
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    .line 227
    .local v9, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "path":Ljava/lang/String;
    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    if-ge v14, v12, :cond_a

    aget-object v15, v11, v14

    .line 229
    .local v15, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 232
    :try_start_0
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v1, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v10, v5, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 234
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v2, 0x0

    .line 240
    :cond_0
    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    move-object v0, v2

    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_0

    .line 319
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    goto/16 :goto_4

    .line 311
    :sswitch_0
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 312
    goto/16 :goto_5

    .line 316
    :sswitch_1
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 317
    goto/16 :goto_5

    .line 298
    :sswitch_2
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v3, "album"

    .line 299
    invoke-direct {v1, v10, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 300
    goto/16 :goto_5

    .line 280
    :sswitch_3
    const/4 v2, 0x0

    .line 281
    .local v2, "year":I
    if-eqz v0, :cond_2

    .line 282
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 283
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "dateTime":Ljava/lang/String;
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 285
    goto/16 :goto_5

    .line 302
    .end local v2    # "year":I
    .end local v3    # "dateTime":Ljava/lang/String;
    :sswitch_4
    invoke-direct {v1, v10}, Landroid/mtp/MtpPropertyGroup;->queryGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "genre":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 304
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 287
    .end local v2    # "genre":Ljava/lang/String;
    :sswitch_5
    const/4 v2, 0x0

    .line 288
    .local v2, "track":I
    if-eqz v0, :cond_3

    .line 289
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 290
    .end local v2    # "track":I
    .local v6, "track":I
    :cond_3
    move v6, v2

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object v2, v8

    move v3, v9

    move/from16 v18, v6

    move-wide/from16 v6, v16

    .end local v6    # "track":I
    .local v18, "track":I
    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 292
    goto/16 :goto_5

    .line 294
    .end local v18    # "track":I
    :sswitch_6
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v3, "artist"

    .line 295
    invoke-direct {v1, v10, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 296
    goto/16 :goto_5

    .line 274
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 276
    .local v16, "puid":J
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object v2, v8

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 277
    goto/16 :goto_5

    .line 268
    .end local v16    # "puid":J
    :sswitch_8
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    .line 268
    :goto_2
    move-wide v6, v2

    goto :goto_3

    .line 269
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    .line 268
    :goto_3
    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 270
    goto/16 :goto_5

    .line 255
    :sswitch_9
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 257
    goto/16 :goto_5

    .line 250
    :sswitch_a
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 251
    goto/16 :goto_5

    .line 265
    :sswitch_b
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 266
    goto/16 :goto_5

    .line 245
    :sswitch_c
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 246
    goto :goto_5

    .line 262
    :sswitch_d
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 263
    goto :goto_5

    .line 259
    :sswitch_e
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 260
    goto :goto_5

    .line 319
    :goto_4
    if-eqz v2, :cond_8

    const v3, 0xffff

    if-eq v2, v3, :cond_6

    .line 330
    const-wide/16 v2, 0x0

    .line 331
    .local v2, "longValue":J
    if-eqz v0, :cond_5

    .line 332
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 333
    .end local v2    # "longValue":J
    .local v16, "longValue":J
    :cond_5
    move-wide/from16 v16, v2

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object v2, v8

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .end local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v16    # "longValue":J
    goto :goto_5

    .line 324
    .restart local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_6
    const-string v2, ""

    .line 325
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 326
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_7
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 328
    goto :goto_5

    .line 321
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 322
    nop

    .line 228
    .end local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_0

    .line 337
    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :cond_a
    if-eqz v2, :cond_b

    .line 338
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_b
    const/16 v0, 0x2001

    return v0

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_e
        0xdc02 -> :sswitch_d
        0xdc03 -> :sswitch_c
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_9
        0xdc0b -> :sswitch_8
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_6
        0xdc4e -> :sswitch_9
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_4
        0xdc99 -> :sswitch_3
        0xdc9a -> :sswitch_2
        0xdce0 -> :sswitch_a
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method
