.class public final Lcom/android/internal/telephony/HbpcdUtils;
.super Ljava/lang/Object;
.source "HbpcdUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HbpcdUtils"


# instance fields
.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method


# virtual methods
.method public getIddByMcc(I)Ljava/lang/String;
    .locals 9
    .param p1, "mcc"    # I

    .line 139
    const-string v0, ""

    .line 141
    .local v0, "idd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 143
    .local v1, "c":Landroid/database/Cursor;
    const-string v2, "IDD"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "projection":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    .local v2, "cur":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_2
    return-object v0
.end method

.method public getMcc(IIIZ)I
    .locals 19
    .param p1, "sid"    # I
    .param p2, "tz"    # I
    .param p3, "DSTflag"    # I
    .param p4, "isNitzTimeZone"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 43
    const/4 v4, 0x0

    .line 50
    .local v4, "tmpMcc":I
    const-string v5, "MCC"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "projection2":[Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SID="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 54
    .local v5, "c2":Landroid/database/Cursor;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 55
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 59
    .local v9, "c2Counter":I
    if-ne v9, v6, :cond_0

    .line 63
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 68
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 69
    return v4

    .line 71
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 76
    .end local v9    # "c2Counter":I
    :cond_1
    const-string v9, "MCC"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "projection3":[Ljava/lang/String;
    iget-object v10, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SID_Conflict="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " and ((("

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "GMT_Offset_Low"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "<="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") and ("

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "<="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "GMT_Offset_High"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") and (0="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")) or (("

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "GMT_DST_Low"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "<="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") and ("

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "<="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "GMT_DST_High"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") and (1="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")))"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 84
    .local v9, "c3":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 85
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 86
    .local v10, "c3Counter":I
    if-lez v10, :cond_4

    .line 87
    if-le v10, v6, :cond_2

    .line 88
    const-string v6, "HbpcdUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "something wrong, get more results for 1 conflict SID: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 96
    if-nez p4, :cond_3

    .line 101
    const/4 v4, 0x0

    .line 103
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 104
    return v4

    .line 106
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v10    # "c3Counter":I
    :cond_5
    const-string v10, "MCC"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "projection5":[Ljava/lang/String;
    iget-object v13, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/internal/telephony/HbpcdLookup$MccSidRange;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SID_Range_Low<="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "SID_Range_High"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ">="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 116
    .local v10, "c5":Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 117
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_6

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 122
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 123
    return v4

    .line 125
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_7
    return v4
.end method
