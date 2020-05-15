.class Lcom/android/server/am/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;
    .locals 33
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "affinityIntent"    # Landroid/content/Intent;
    .param p5, "affinity"    # Ljava/lang/String;
    .param p6, "rootAffinity"    # Ljava/lang/String;
    .param p7, "realActivity"    # Landroid/content/ComponentName;
    .param p8, "origActivity"    # Landroid/content/ComponentName;
    .param p9, "rootWasReset"    # Z
    .param p10, "autoRemoveRecents"    # Z
    .param p11, "askedCompatMode"    # Z
    .param p12, "userId"    # I
    .param p13, "effectiveUid"    # I
    .param p14, "lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .line 2274
    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    new-instance v32, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    invoke-direct/range {v0 .. v31}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2258
    new-instance v6, Lcom/android/server/am/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2252
    new-instance v7, Lcom/android/server/am/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2524
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2526
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 71
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2285
    const/4 v0, 0x0

    .line 2286
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 2287
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 2289
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 2290
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 2291
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 2292
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2293
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2294
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 2295
    .local v10, "rootHasReset":Z
    const/4 v11, 0x0

    .line 2296
    .local v11, "autoRemoveRecents":Z
    const/4 v12, 0x0

    .line 2297
    .local v12, "askedCompatMode":Z
    const/4 v13, 0x0

    .line 2298
    .local v13, "taskType":I
    const/4 v14, 0x0

    .line 2299
    .local v14, "userId":I
    const/4 v15, 0x1

    .line 2300
    .local v15, "userSetupComplete":Z
    const/16 v16, -0x1

    .line 2301
    .local v16, "effectiveUid":I
    const/16 v17, 0x0

    .line 2302
    .local v17, "lastDescription":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 2303
    .local v18, "lastTimeOnTop":J
    const/16 v20, 0x1

    .line 2304
    .local v20, "neverRelinquishIdentity":Z
    const/16 v21, -0x1

    .line 2305
    .local v21, "taskId":I
    move-object/from16 v36, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2306
    .local v2, "outerDepth":I
    .local v36, "affinityIntent":Landroid/content/Intent;
    move-object/from16 v37, v0

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    .line 2306
    .end local v0    # "intent":Landroid/content/Intent;
    .local v37, "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v38, v0

    .line 2307
    .local v38, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v0, -0x1

    .line 2308
    .local v0, "taskAffiliation":I
    const/16 v22, 0x0

    .line 2309
    .local v22, "taskAffiliationColor":I
    const/16 v23, -0x1

    .line 2310
    .local v23, "prevTaskId":I
    const/16 v24, -0x1

    .line 2311
    .local v24, "nextTaskId":I
    const/16 v25, -0x1

    .line 2312
    .local v25, "callingUid":I
    const-string v26, ""

    .line 2313
    .local v26, "callingPackage":Ljava/lang/String;
    const/16 v27, 0x4

    .line 2314
    .local v27, "resizeMode":I
    const/16 v28, 0x0

    .line 2315
    .local v28, "supportsPictureInPicture":Z
    const/16 v29, 0x0

    .line 2316
    .local v29, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v30, -0x1

    .line 2317
    .local v30, "minWidth":I
    const/16 v31, -0x1

    .line 2318
    .local v31, "minHeight":I
    const/16 v32, 0x0

    .line 2320
    .local v32, "persistTaskVersion":I
    const/16 v33, 0x0

    .line 2321
    .local v33, "isInFront":Z
    const/16 v34, 0x0

    .line 2324
    .local v34, "isInBack":Z
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v35

    move/from16 v39, v15

    const/4 v15, 0x1

    .line 2324
    .end local v15    # "userSetupComplete":Z
    .local v39, "userSetupComplete":Z
    add-int/lit8 v35, v35, -0x1

    move/from16 v41, v0

    move-object/from16 v40, v4

    move/from16 v54, v5

    move-object/from16 v42, v6

    move-object/from16 v44, v7

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v58, v12

    move v9, v13

    move v7, v14

    move-object/from16 v50, v17

    move-wide/from16 v52, v18

    move/from16 v14, v21

    move/from16 v43, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v47, v25

    move-object/from16 v51, v26

    move/from16 v4, v27

    move-object/from16 v10, v29

    move/from16 v48, v30

    move/from16 v49, v31

    move/from16 v13, v32

    move/from16 v12, v33

    move/from16 v11, v34

    move/from16 v59, v39

    move/from16 v39, v20

    .end local v0    # "taskAffiliation":I
    .end local v5    # "realActivitySuspended":Z
    .end local v6    # "origActivity":Landroid/content/ComponentName;
    .end local v17    # "lastDescription":Ljava/lang/String;
    .end local v18    # "lastTimeOnTop":J
    .end local v20    # "neverRelinquishIdentity":Z
    .end local v21    # "taskId":I
    .end local v22    # "taskAffiliationColor":I
    .end local v23    # "prevTaskId":I
    .end local v24    # "nextTaskId":I
    .end local v25    # "callingUid":I
    .end local v26    # "callingPackage":Ljava/lang/String;
    .end local v27    # "resizeMode":I
    .end local v29    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v30    # "minWidth":I
    .end local v31    # "minHeight":I
    .end local v32    # "persistTaskVersion":I
    .end local v33    # "isInFront":Z
    .end local v34    # "isInBack":Z
    .local v4, "resizeMode":I
    .local v7, "userId":I
    .local v9, "taskType":I
    .local v10, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v11, "isInBack":Z
    .local v12, "isInFront":Z
    .local v13, "persistTaskVersion":I
    .local v14, "taskId":I
    .local v35, "attrNdx":I
    .local v39, "neverRelinquishIdentity":Z
    .local v40, "realActivity":Landroid/content/ComponentName;
    .local v41, "taskAffiliation":I
    .local v42, "origActivity":Landroid/content/ComponentName;
    .local v43, "taskAffiliationColor":I
    .local v44, "affinity":Ljava/lang/String;
    .local v45, "prevTaskId":I
    .local v46, "nextTaskId":I
    .local v47, "callingUid":I
    .local v48, "minWidth":I
    .local v49, "minHeight":I
    .local v50, "lastDescription":Ljava/lang/String;
    .local v51, "callingPackage":Ljava/lang/String;
    .local v52, "lastTimeOnTop":J
    .local v54, "realActivitySuspended":Z
    .local v55, "hasRootAffinity":Z
    .local v56, "rootHasReset":Z
    .local v57, "autoRemoveRecents":Z
    .local v58, "askedCompatMode":Z
    .local v59, "userSetupComplete":Z
    :goto_0
    move/from16 v0, v35

    .line 2324
    .end local v35    # "attrNdx":I
    .local v0, "attrNdx":I
    if-ltz v0, :cond_3

    .line 2325
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 2326
    .local v5, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2329
    .local v6, "attrValue":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v15, "root_has_reset"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v15, "real_activity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v15, "never_relinquish_identity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v15, "calling_package"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x15

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v15, "persist_task_version"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1d

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v15, "last_description"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xd

    goto/16 :goto_2

    :sswitch_6
    const-string v15, "affinity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v15, "min_width"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x19

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v15, "prev_affiliation"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v15, "task_type"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v15, "task_in_front"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1b

    goto/16 :goto_2

    :sswitch_b
    const-string v15, "calling_uid"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x14

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v15, "user_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x9

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v15, "root_affinity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x5

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v15, "supports_picture_in_picture"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x17

    goto/16 :goto_2

    :sswitch_f
    const-string v15, "auto_remove_recents"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x7

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v15, "orig_activity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v15, "non_fullscreen_bounds"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x18

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v15, "min_height"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v15, "resize_mode"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x16

    goto/16 :goto_2

    :sswitch_14
    const-string v15, "effective_uid"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xb

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v15, "user_setup_complete"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xa

    goto :goto_2

    :sswitch_16
    const-string/jumbo v15, "task_affiliation"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x10

    goto :goto_2

    :sswitch_17
    const-string/jumbo v15, "real_activity_suspended"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    goto :goto_2

    :sswitch_18
    const-string/jumbo v15, "task_affiliation_color"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x13

    goto :goto_2

    :sswitch_19
    const-string/jumbo v15, "next_affiliation"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x12

    goto :goto_2

    :sswitch_1a
    const-string/jumbo v15, "task_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_1b
    const-string/jumbo v15, "last_time_moved"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xe

    goto :goto_2

    :sswitch_1c
    const-string/jumbo v15, "task_in_back"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1c

    goto :goto_2

    :sswitch_1d
    const-string v15, "asked_compat_mode"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x8

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v15, -0x1

    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 2424
    const-string/jumbo v15, "task_description_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2425
    move-object/from16 v15, v38

    invoke-virtual {v15, v5, v6}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v15, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v65, v10

    move/from16 v66, v11

    goto/16 :goto_4

    .line 2421
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2422
    goto/16 :goto_3

    .line 2417
    :pswitch_1
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 2418
    goto/16 :goto_3

    .line 2414
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2415
    goto/16 :goto_3

    .line 2410
    :pswitch_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 2411
    goto/16 :goto_3

    .line 2407
    :pswitch_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 2408
    goto/16 :goto_3

    .line 2404
    :pswitch_5
    invoke-static {v6}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 2405
    goto/16 :goto_3

    .line 2401
    :pswitch_6
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 2402
    .end local v28    # "supportsPictureInPicture":Z
    .local v15, "supportsPictureInPicture":Z
    nop

    .line 2324
    move/from16 v28, v15

    goto/16 :goto_3

    .line 2398
    .end local v15    # "supportsPictureInPicture":Z
    .restart local v28    # "supportsPictureInPicture":Z
    :pswitch_7
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2399
    goto/16 :goto_3

    .line 2395
    :pswitch_8
    move-object/from16 v51, v6

    .line 2396
    goto/16 :goto_3

    .line 2392
    :pswitch_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 2393
    goto/16 :goto_3

    .line 2389
    :pswitch_a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 2390
    goto/16 :goto_3

    .line 2386
    :pswitch_b
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 2387
    goto/16 :goto_3

    .line 2383
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2384
    goto :goto_3

    .line 2380
    :pswitch_d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2381
    goto :goto_3

    .line 2377
    :pswitch_e
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 2378
    goto :goto_3

    .line 2374
    :pswitch_f
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 2375
    goto :goto_3

    .line 2371
    :pswitch_10
    move-object/from16 v50, v6

    .line 2372
    goto :goto_3

    .line 2368
    :pswitch_11
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2369
    goto :goto_3

    .line 2365
    :pswitch_12
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2366
    .end local v16    # "effectiveUid":I
    .local v15, "effectiveUid":I
    nop

    .line 2324
    move/from16 v16, v15

    goto :goto_3

    .line 2362
    .end local v15    # "effectiveUid":I
    .restart local v16    # "effectiveUid":I
    :pswitch_13
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    .line 2363
    goto :goto_3

    .line 2359
    :pswitch_14
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2360
    goto :goto_3

    .line 2356
    :pswitch_15
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    .line 2357
    goto :goto_3

    .line 2353
    :pswitch_16
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    .line 2354
    goto :goto_3

    .line 2350
    :pswitch_17
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    .line 2351
    goto :goto_3

    .line 2346
    :pswitch_18
    move-object v8, v6

    .line 2347
    const/4 v15, 0x1

    .line 2348
    .end local v55    # "hasRootAffinity":Z
    .local v15, "hasRootAffinity":Z
    nop

    .line 2324
    move/from16 v55, v15

    goto :goto_3

    .line 2343
    .end local v15    # "hasRootAffinity":Z
    .restart local v55    # "hasRootAffinity":Z
    :pswitch_19
    move-object/from16 v44, v6

    .line 2344
    goto :goto_3

    .line 2340
    :pswitch_1a
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v42

    .line 2341
    goto :goto_3

    .line 2337
    :pswitch_1b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    .line 2338
    goto :goto_3

    .line 2334
    :pswitch_1c
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v40

    .line 2335
    nop

    .line 2324
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v15, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_3
    move-object/from16 v15, v38

    goto :goto_5

    .line 2331
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v5    # "attrName":Ljava/lang/String;
    .restart local v6    # "attrValue":Ljava/lang/String;
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_1d
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    .line 2324
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    :cond_1
    move-object/from16 v65, v10

    move/from16 v66, v11

    move-object/from16 v15, v38

    goto :goto_4

    .line 2427
    .restart local v5    # "attrName":Ljava/lang/String;
    .restart local v6    # "attrValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v15, v38

    .line 2427
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v64, v6

    const-string v6, "ActivityManager"

    .line 2427
    .end local v6    # "attrValue":Ljava/lang/String;
    .local v64, "attrValue":Ljava/lang/String;
    move-object/from16 v65, v10

    new-instance v10, Ljava/lang/StringBuilder;

    .line 2427
    .end local v10    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v65, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v66, v11

    const-string v11, "TaskRecord: Unknown attribute="

    .line 2427
    .end local v11    # "isInBack":Z
    .local v66, "isInBack":Z
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v64    # "attrValue":Ljava/lang/String;
    .end local v65    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v66    # "isInBack":Z
    .restart local v10    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v11    # "isInBack":Z
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_4
    move-object/from16 v10, v65

    move/from16 v11, v66

    .line 2324
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_5
    add-int/lit8 v35, v0, -0x1

    .line 2324
    .end local v0    # "attrNdx":I
    .restart local v35    # "attrNdx":I
    move-object/from16 v38, v15

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2433
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v35    # "attrNdx":I
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_3
    move-object/from16 v65, v10

    move/from16 v66, v11

    move-object/from16 v15, v38

    .line 2433
    .end local v10    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v11    # "isInBack":Z
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v65    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v66    # "isInBack":Z
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v11, v0

    .line 2433
    .local v11, "event":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_a

    const/4 v5, 0x3

    if-ne v11, v5, :cond_4

    .line 2434
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_a

    .line 2435
    :cond_4
    const/4 v5, 0x2

    if-ne v11, v5, :cond_9

    .line 2436
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2439
    .local v0, "name":Ljava/lang/String;
    const-string v5, "affinity_intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2440
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 2454
    .end local v36    # "affinityIntent":Landroid/content/Intent;
    .local v5, "affinityIntent":Landroid/content/Intent;
    move-object/from16 v10, p0

    move-object/from16 v36, v5

    goto :goto_7

    .line 2441
    .end local v5    # "affinityIntent":Landroid/content/Intent;
    .restart local v36    # "affinityIntent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v5, "intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2442
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 2454
    .end local v37    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v10, p0

    move-object/from16 v37, v5

    goto :goto_7

    .line 2443
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v37    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v5, "activity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2444
    nop

    .line 2445
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2448
    .local v5, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_7

    .line 2449
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    .end local v5    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_7
    nop

    .line 2454
    move-object/from16 v10, p0

    goto :goto_7

    .line 2452
    :cond_8
    move-object/from16 v10, p0

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2454
    .end local v0    # "name":Ljava/lang/String;
    :goto_7
    goto :goto_6

    .line 2433
    .end local v11    # "event":I
    :cond_9
    move-object/from16 v10, p0

    goto :goto_6

    .line 2456
    .restart local v11    # "event":I
    :cond_a
    move-object/from16 v10, p0

    if-nez v55, :cond_b

    .line 2457
    move-object/from16 v0, v44

    .line 2461
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .local v0, "rootAffinity":Ljava/lang/String;
    .local v38, "rootAffinity":Ljava/lang/String;
    :goto_8
    move-object/from16 v38, v0

    goto :goto_9

    .line 2458
    .end local v0    # "rootAffinity":Ljava/lang/String;
    .end local v38    # "rootAffinity":Ljava/lang/String;
    .restart local v8    # "rootAffinity":Ljava/lang/String;
    :cond_b
    const-string v0, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2459
    const/4 v0, 0x0

    goto :goto_8

    .line 2461
    :cond_c
    move-object/from16 v38, v8

    .line 2461
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .restart local v38    # "rootAffinity":Ljava/lang/String;
    :goto_9
    if-gtz v16, :cond_10

    .line 2462
    if-eqz v37, :cond_d

    move-object/from16 v0, v37

    goto :goto_a

    :cond_d
    move-object/from16 v0, v36

    :goto_a
    move-object v5, v0

    .line 2463
    .local v5, "checkIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 2464
    .end local v16    # "effectiveUid":I
    .local v6, "effectiveUid":I
    if-eqz v5, :cond_f

    .line 2465
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v8, v0

    .line 2467
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 2468
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2200

    .line 2467
    invoke-interface {v8, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2471
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_e

    .line 2472
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2475
    .end local v6    # "effectiveUid":I
    .local v0, "effectiveUid":I
    move v6, v0

    .line 2475
    .end local v0    # "effectiveUid":I
    .restart local v6    # "effectiveUid":I
    :cond_e
    goto :goto_b

    .line 2474
    :catch_0
    move-exception v0

    .line 2477
    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    :cond_f
    :goto_b
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating task #"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": effectiveUid="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    .end local v5    # "checkIntent":Landroid/content/Intent;
    move v0, v6

    goto :goto_c

    .line 2481
    .end local v6    # "effectiveUid":I
    .restart local v16    # "effectiveUid":I
    :cond_10
    move/from16 v0, v16

    .line 2481
    .end local v16    # "effectiveUid":I
    .restart local v0    # "effectiveUid":I
    :goto_c
    const/4 v1, 0x1

    if-ge v13, v1, :cond_11

    .line 2486
    if-ne v9, v1, :cond_12

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 2487
    const/4 v4, 0x1

    goto :goto_d

    .line 2494
    :cond_11
    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    .line 2495
    const/4 v4, 0x2

    .line 2496
    const/4 v5, 0x1

    .line 2500
    .end local v28    # "supportsPictureInPicture":Z
    .local v5, "supportsPictureInPicture":Z
    move/from16 v60, v4

    move/from16 v61, v5

    goto :goto_e

    .line 2500
    .end local v4    # "resizeMode":I
    .end local v5    # "supportsPictureInPicture":Z
    .local v60, "resizeMode":I
    .local v61, "supportsPictureInPicture":Z
    :cond_12
    :goto_d
    move/from16 v60, v4

    move/from16 v61, v28

    :goto_e
    move-object/from16 v8, p2

    iget-object v5, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v10

    move v6, v14

    move/from16 v62, v7

    move-object/from16 v7, v37

    .line 2500
    .end local v7    # "userId":I
    .local v62, "userId":I
    move-object/from16 v8, v36

    move/from16 v63, v9

    move-object/from16 v9, v44

    .line 2500
    .end local v9    # "taskType":I
    .local v63, "taskType":I
    move-object/from16 v1, v65

    move-object/from16 v10, v38

    .line 2500
    .end local v65    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v1, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move/from16 v68, v2

    move/from16 v64, v11

    move/from16 v2, v66

    move-object/from16 v11, v40

    .line 2500
    .end local v11    # "event":I
    .end local v66    # "isInBack":Z
    .local v2, "isInBack":Z
    .local v64, "event":I
    .local v68, "outerDepth":I
    move/from16 v69, v2

    move v2, v12

    move-object/from16 v12, v42

    .line 2500
    .end local v12    # "isInFront":Z
    .local v2, "isInFront":Z
    .local v69, "isInBack":Z
    move/from16 v65, v13

    move/from16 v13, v56

    .line 2500
    .end local v13    # "persistTaskVersion":I
    .local v65, "persistTaskVersion":I
    move/from16 v66, v14

    move/from16 v14, v57

    .line 2500
    .end local v14    # "taskId":I
    .local v66, "taskId":I
    move-object/from16 v67, v15

    const/16 v70, 0x1

    move/from16 v15, v58

    .line 2500
    .end local v15    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v67, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move/from16 v16, v62

    move/from16 v17, v0

    move-object/from16 v18, v50

    move-object/from16 v19, v3

    move-wide/from16 v20, v52

    move/from16 v22, v39

    move-object/from16 v23, v67

    move/from16 v24, v41

    move/from16 v25, v45

    move/from16 v26, v46

    move/from16 v27, v43

    move/from16 v28, v47

    move-object/from16 v29, v51

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v54

    move/from16 v33, v59

    move/from16 v34, v48

    move/from16 v35, v49

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 2507
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iput-object v1, v4, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2508
    invoke-virtual {v4, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2510
    invoke-static {v4, v2}, Lcom/android/server/am/TaskRecord;->access$002(Lcom/android/server/am/TaskRecord;Z)Z

    .line 2511
    move/from16 v11, v69

    invoke-static {v4, v11}, Lcom/android/server/am/TaskRecord;->access$102(Lcom/android/server/am/TaskRecord;Z)Z

    .line 2514
    .end local v69    # "isInBack":Z
    .local v11, "isInBack":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 2514
    .local v5, "activityNdx":I
    :goto_f
    if-ltz v5, :cond_13

    .line 2515
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2514
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 2519
    .end local v5    # "activityNdx":I
    :cond_13
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1d
        -0x632558f9 -> :sswitch_1c
        -0x5ccdaff6 -> :sswitch_1b
        -0x5ba06deb -> :sswitch_1a
        -0x591a685c -> :sswitch_19
        -0x4d0e36e6 -> :sswitch_18
        -0x43dc2f14 -> :sswitch_17
        -0x430d08ca -> :sswitch_16
        -0x3a0f4851 -> :sswitch_15
        -0x37680e48 -> :sswitch_14
        -0x3395d9b2 -> :sswitch_13
        -0x313f784c -> :sswitch_12
        -0x2a27c539 -> :sswitch_11
        -0x2a0990b3 -> :sswitch_10
        -0x1df202b3 -> :sswitch_f
        -0x158140a0 -> :sswitch_e
        -0x9b3481b -> :sswitch_d
        -0x8c511f1 -> :sswitch_c
        -0x7e175ab -> :sswitch_b
        -0x1457ff7 -> :sswitch_a
        0xac8bdb4 -> :sswitch_9
        0x13bdcee4 -> :sswitch_8
        0x2046b199 -> :sswitch_7
        0x24172928 -> :sswitch_6
        0x33cf43d3 -> :sswitch_5
        0x3c12eca9 -> :sswitch_4
        0x40756fcb -> :sswitch_3
        0x56e1584e -> :sswitch_2
        0x5bc3bc90 -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
