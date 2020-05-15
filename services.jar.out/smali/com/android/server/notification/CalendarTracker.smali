.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 46
    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 60
    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/CalendarTracker;

    .line 39
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/CalendarTracker;

    .line 39
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object v0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .line 232
    packed-switch p0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_0
    const-string v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    .line 236
    :pswitch_1
    const-string v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    .line 235
    :pswitch_2
    const-string v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    .line 234
    :pswitch_3
    const-string v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    .line 233
    :pswitch_4
    const-string v0, "ATTENDEE_STATUS_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "availability"    # I

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_0
    const-string v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    .line 245
    :pswitch_1
    const-string v0, "AVAILABILITY_FREE"

    return-object v0

    .line 244
    :pswitch_2
    const-string v0, "AVAILABILITY_BUSY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPrimaryCalendars()Landroid/util/ArraySet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "start":J
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v2, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v3, "\"primary\""

    .line 96
    .local v3, "primary":Ljava/lang/String;
    const-string v4, "_id"

    const-string v5, "(account_name=ownerAccount) AS \"primary\""

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "projection":[Ljava/lang/String;
    const-string v4, "\"primary\" = 1"

    .line 99
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "\"primary\" = 1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    .line 103
    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_0
    if-eqz v5, :cond_1

    .line 108
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ConditionProviders.CT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPrimaryCalendars took "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    return-object v2

    .line 107
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 108
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 22
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 176
    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 177
    .local v2, "start":J
    const-string v10, "event_id = ? AND attendeeEmail = ?"

    .line 178
    .local v10, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v12, 0x1

    aput-object v1, v8, v12

    .line 183
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 186
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_6

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 187
    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto/16 :goto_4

    .line 190
    :cond_0
    move v5, v11

    .line 191
    .local v5, "rt":Z
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 193
    .local v6, "rowEventId":J
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "rowEmail":Ljava/lang/String;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 195
    .local v14, "status":I
    move-object/from16 v15, p1

    :try_start_1
    iget v12, v15, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v12, v14}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v12

    .line 196
    .local v12, "meetsReply":Z
    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string v11, "ConditionProviders.CT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v19, v8

    :try_start_2
    const-string v8, ""

    .line 196
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .local v19, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "status=%s, meetsReply=%s"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v20, v10

    const/4 v10, 0x2

    :try_start_3
    new-array v13, v10, [Ljava/lang/Object;

    .line 199
    .end local v10    # "selection":Ljava/lang/String;
    .local v20, "selection":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v13, v18

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v13, v16

    .line 198
    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 206
    .end local v5    # "rt":Z
    .end local v6    # "rowEventId":J
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v12    # "meetsReply":Z
    .end local v14    # "status":I
    :catchall_0
    move-exception v0

    move/from16 v8, p2

    goto/16 :goto_5

    .line 206
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 206
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto/16 :goto_5

    .line 200
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v5    # "rt":Z
    .restart local v6    # "rowEventId":J
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "rowEmail":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    .restart local v12    # "meetsReply":Z
    .restart local v14    # "status":I
    :cond_1
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v18, v11

    move v10, v0

    .line 200
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_1
    move/from16 v8, p2

    int-to-long v10, v8

    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    :try_start_4
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_2

    if-eqz v12, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move/from16 v0, v18

    .line 202
    .local v0, "eventMeets":Z
    :goto_2
    or-int/2addr v5, v0

    .line 203
    .end local v0    # "eventMeets":Z
    .end local v6    # "rowEventId":J
    .end local v9    # "rowEmail":Ljava/lang/String;
    .end local v12    # "meetsReply":Z
    .end local v14    # "status":I
    nop

    .line 190
    move/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    const/4 v0, 0x2

    const/4 v12, 0x1

    move-object/from16 v13, p0

    goto/16 :goto_0

    .line 206
    .end local v5    # "rt":Z
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 204
    .restart local v5    # "rt":Z
    :cond_3
    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 206
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 207
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ConditionProviders.CT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "meetsAttendee took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    return v5

    .line 206
    .end local v5    # "rt":Z
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    :goto_3
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 206
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    goto :goto_5

    .line 187
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    :cond_6
    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    .line 187
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    .restart local v20    # "selection":Ljava/lang/String;
    :goto_4
    :try_start_5
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ConditionProviders.CT"

    const-string v5, "No attendees found"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 188
    :cond_7
    nop

    .line 206
    if-eqz v4, :cond_8

    .line 207
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_8
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ConditionProviders.CT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "meetsAttendee took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 206
    :catchall_4
    move-exception v0

    :goto_5
    if-eqz v4, :cond_a

    .line 207
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_a
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "meetsAttendee took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConditionProviders.CT"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    throw v0
.end method

.method private static meetsReply(II)Z
    .locals 3
    .param p0, "reply"    # I
    .param p1, "attendeeStatus"    # I

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 261
    return v0

    .line 254
    :pswitch_0
    if-ne p1, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 256
    :pswitch_1
    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 259
    :pswitch_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .locals 5
    .param p1, "registered"    # Z

    .line 214
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 217
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_2

    .line 218
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 222
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_5

    .line 224
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 226
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 227
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 41
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 116
    move-wide/from16 v3, p2

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 117
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 118
    const-wide/32 v6, 0x5265c00

    add-long v8, v3, v6

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 119
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 120
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v15, "begin ASC"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v8

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 122
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v10, v0

    .line 123
    .local v10, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    add-long/2addr v6, v3

    iput-wide v6, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 125
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 126
    .local v0, "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_0
    if-eqz v9, :cond_e

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 127
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 128
    .local v11, "begin":J
    const/4 v7, 0x1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 129
    .local v13, "end":J
    const/4 v15, 0x2

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 130
    .local v16, "title":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 131
    .local v6, "calendarVisible":Z
    :goto_1
    const/4 v15, 0x4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v20

    .line 132
    .local v21, "eventId":I
    const/4 v15, 0x5

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    .line 133
    .local v22, "name":Ljava/lang/String;
    const/4 v15, 0x6

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v23, v20

    .line 134
    .local v23, "owner":Ljava/lang/String;
    const/4 v15, 0x7

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v26, v24

    .line 135
    .local v26, "calendarId":J
    const/16 v15, 0x8

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v28, v20

    .line 136
    .local v28, "availability":I
    move-object/from16 v29, v8

    move-wide/from16 v7, v26

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .end local v8    # "uri":Landroid/net/Uri;
    .end local v26    # "calendarId":J
    .local v7, "calendarId":J
    .local v29, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 137
    .local v15, "calendarPrimary":Z
    sget-boolean v20, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v20, :cond_1

    move-object/from16 v30, v0

    :try_start_3
    const-string v0, "ConditionProviders.CT"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v0    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v30, "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move-object/from16 v31, v5

    :try_start_4
    const-string v5, "%s %s-%s v=%s a=%s eid=%s n=%s o=%s cid=%s p=%s"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v31, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v32, v9

    const/16 v9, 0xa

    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v32, "cursor":Landroid/database/Cursor;
    :try_start_5
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v16, v9, v18
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v33, v10

    :try_start_6
    new-instance v10, Ljava/util/Date;

    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v33, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    const/16 v20, 0x1

    aput-object v10, v9, v20

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x2

    aput-object v10, v9, v17

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v17, 0x3

    aput-object v10, v9, v17

    .line 141
    move/from16 v10, v28

    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v17

    .end local v28    # "availability":I
    .local v10, "availability":I
    const/16 v19, 0x4

    aput-object v17, v9, v19

    move/from16 v1, v21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .end local v21    # "eventId":I
    .local v1, "eventId":I
    const/16 v19, 0x5

    aput-object v17, v9, v19

    move/from16 v34, v1

    move-object/from16 v1, v22

    const/16 v17, 0x6

    aput-object v1, v9, v17

    .end local v22    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v34, "eventId":I
    move/from16 v35, v10

    move-object/from16 v10, v23

    const/16 v17, 0x7

    aput-object v10, v9, v17

    .end local v23    # "owner":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .local v35, "availability":I
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v19, 0x8

    aput-object v17, v9, v19

    const/16 v17, 0x9

    .line 142
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v9, v17

    .line 137
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "calendarVisible":Z
    .end local v7    # "calendarId":J
    .end local v10    # "owner":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "end":J
    .end local v15    # "calendarPrimary":Z
    .end local v16    # "title":Ljava/lang/String;
    .end local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v34    # "eventId":I
    .end local v35    # "availability":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    goto/16 :goto_b

    .line 165
    :catch_0
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    goto/16 :goto_9

    .line 168
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v10, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_1
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v32

    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_b

    .line 165
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_1
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v32

    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_9

    .line 168
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_2
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_b

    .line 165
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_2
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_9

    .line 168
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_3
    move-exception v0

    move-object/from16 v31, v5

    move-object v2, v9

    move-object v1, v10

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_b

    .line 165
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_3
    move-exception v0

    move-object/from16 v31, v5

    move-object v2, v9

    move-object v1, v10

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_9

    .line 143
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v0    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v6    # "calendarVisible":Z
    .restart local v7    # "calendarId":J
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v11    # "begin":J
    .restart local v13    # "end":J
    .restart local v15    # "calendarPrimary":Z
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v21    # "eventId":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "owner":Ljava/lang/String;
    .restart local v28    # "availability":I
    :cond_1
    move-object/from16 v30, v0

    move-object/from16 v31, v5

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move/from16 v34, v21

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move/from16 v35, v28

    const/16 v18, 0x0

    .end local v0    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v21    # "eventId":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "owner":Ljava/lang/String;
    .end local v28    # "availability":I
    .restart local v1    # "name":Ljava/lang/String;
    .local v10, "owner":Ljava/lang/String;
    .restart local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v34    # "eventId":I
    .restart local v35    # "availability":I
    :goto_2
    cmp-long v0, v3, v11

    if-ltz v0, :cond_2

    cmp-long v0, v3, v13

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v18

    .line 144
    .local v0, "meetsTime":Z
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v15, :cond_4

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 145
    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 146
    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move/from16 v5, v18

    .line 147
    .local v5, "meetsCalendar":Z
    :goto_4
    move-object/from16 v36, v1

    move/from16 v9, v35

    const/4 v1, 0x1

    if-eq v9, v1, :cond_5

    .end local v1    # "name":Ljava/lang/String;
    .end local v35    # "availability":I
    .local v9, "availability":I
    .local v36, "name":Ljava/lang/String;
    const/16 v18, 0x1

    nop

    :cond_5
    move/from16 v1, v18

    .line 148
    .local v1, "meetsAvailability":Z
    if-eqz v5, :cond_c

    if-eqz v1, :cond_c

    .line 149
    :try_start_7
    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v17, :cond_6

    move/from16 v37, v1

    :try_start_8
    const-string v1, "ConditionProviders.CT"

    .end local v1    # "meetsAvailability":Z
    .local v37, "meetsAvailability":Z
    move/from16 v38, v5

    const-string v5, "  MEETS CALENDAR & AVAILABILITY"

    .end local v5    # "meetsCalendar":Z
    .local v38, "meetsCalendar":Z
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 150
    .end local v37    # "meetsAvailability":Z
    .end local v38    # "meetsCalendar":Z
    .restart local v1    # "meetsAvailability":Z
    .restart local v5    # "meetsCalendar":Z
    :cond_6
    move/from16 v37, v1

    move/from16 v38, v5

    .end local v1    # "meetsAvailability":Z
    .end local v5    # "meetsCalendar":Z
    .restart local v37    # "meetsAvailability":Z
    .restart local v38    # "meetsCalendar":Z
    :goto_5
    move/from16 v5, v34

    move-object/from16 v1, p0

    :try_start_9
    invoke-direct {v1, v2, v5, v10}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v17

    .line 151
    .end local v34    # "eventId":I
    .local v5, "eventId":I
    .local v17, "meetsAttendee":Z
    if-eqz v17, :cond_c

    .line 152
    sget-boolean v18, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v18, :cond_7

    :try_start_a
    const-string v1, "ConditionProviders.CT"

    const-string v2, "    MEETS ATTENDEE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 153
    :cond_7
    if-eqz v0, :cond_9

    .line 154
    :try_start_b
    sget-boolean v1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v1, :cond_8

    :try_start_c
    const-string v1, "ConditionProviders.CT"

    const-string v2, "      MEETS TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 155
    :cond_8
    move-object/from16 v1, v33

    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v1, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto :goto_6

    .line 157
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_9
    move-object/from16 v1, v33

    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_6
    cmp-long v2, v11, v3

    if-lez v2, :cond_a

    move/from16 v40, v5

    move/from16 v39, v6

    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .end local v5    # "eventId":I
    .end local v6    # "calendarVisible":Z
    .local v39, "calendarVisible":Z
    .local v40, "eventId":I
    cmp-long v2, v11, v5

    if-gez v2, :cond_b

    .line 158
    iput-wide v11, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_7

    .line 168
    .end local v0    # "meetsTime":Z
    .end local v7    # "calendarId":J
    .end local v9    # "availability":I
    .end local v10    # "owner":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "end":J
    .end local v15    # "calendarPrimary":Z
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "meetsAttendee":Z
    .end local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "meetsAvailability":Z
    .end local v38    # "meetsCalendar":Z
    .end local v39    # "calendarVisible":Z
    .end local v40    # "eventId":I
    :catchall_4
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_b

    .line 165
    :catch_4
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_9

    .line 159
    .restart local v0    # "meetsTime":Z
    .restart local v5    # "eventId":I
    .restart local v6    # "calendarVisible":Z
    .restart local v7    # "calendarId":J
    .restart local v9    # "availability":I
    .restart local v10    # "owner":Ljava/lang/String;
    .restart local v11    # "begin":J
    .restart local v13    # "end":J
    .restart local v15    # "calendarPrimary":Z
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v17    # "meetsAttendee":Z
    .restart local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v36    # "name":Ljava/lang/String;
    .restart local v37    # "meetsAvailability":Z
    .restart local v38    # "meetsCalendar":Z
    :cond_a
    move/from16 v40, v5

    move/from16 v39, v6

    .end local v5    # "eventId":I
    .end local v6    # "calendarVisible":Z
    .restart local v39    # "calendarVisible":Z
    .restart local v40    # "eventId":I
    :cond_b
    cmp-long v2, v13, v3

    if-lez v2, :cond_d

    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v13, v5

    if-gez v2, :cond_d

    .line 160
    iput-wide v13, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v0    # "meetsTime":Z
    .end local v7    # "calendarId":J
    .end local v9    # "availability":I
    .end local v10    # "owner":Ljava/lang/String;
    .end local v11    # "begin":J
    .end local v13    # "end":J
    .end local v15    # "calendarPrimary":Z
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "meetsAttendee":Z
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "meetsAvailability":Z
    .end local v38    # "meetsCalendar":Z
    .end local v39    # "calendarVisible":Z
    .end local v40    # "eventId":I
    goto :goto_7

    .line 168
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_5
    move-exception v0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_b

    .line 165
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_5
    move-exception v0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    goto/16 :goto_9

    .line 164
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_c
    move-object/from16 v1, v33

    .line 125
    .end local v33    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_d
    :goto_7
    move-object v10, v1

    move-object/from16 v8, v29

    move-object/from16 v0, v30

    move-object/from16 v5, v31

    move-object/from16 v9, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 168
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v30    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    .local v9, "cursor":Landroid/database/Cursor;
    .local v10, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_6
    move-exception v0

    move-object/from16 v31, v5

    move-object v1, v10

    move-object v2, v9

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto :goto_b

    .line 165
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_6
    move-exception v0

    move-object/from16 v31, v5

    move-object v1, v10

    move-object v2, v9

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto :goto_9

    .line 168
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_7
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v1, v10

    move-object v2, v9

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto :goto_b

    .line 165
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_7
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v1, v10

    move-object v2, v9

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto :goto_9

    .line 168
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_e
    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    move-object v1, v10

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    if-eqz v32, :cond_f

    .line 169
    move-object/from16 v2, v32

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 172
    :cond_f
    move-object/from16 v2, v32

    .end local v32    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_8
    goto :goto_a

    .line 168
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catchall_8
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v2, v9

    move-object v1, v10

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    goto :goto_b

    .line 165
    .end local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :catch_8
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v2, v9

    move-object v1, v10

    .line 166
    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v31    # "uriBuilder":Landroid/net/Uri$Builder;
    :goto_9
    :try_start_e
    const-string v5, "ConditionProviders.CT"

    const-string v6, "error reading calendar"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_10

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_10
    :goto_a
    return-object v1

    .line 168
    :catchall_9
    move-exception v0

    :goto_b
    if-eqz v2, :cond_11

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 90
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 83
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 84
    return-void
.end method
