.class public Lcom/android/server/NubiaPermissionDialog;
.super Lcom/android/server/NubiaBasePermissionDialog;
.source "NubiaPermissionDialog.java"


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final ACTION_TIMEDOWN:I = 0xf

.field private static final CALENDAR_PERMISSIONS:[Ljava/lang/String;

.field private static final CALLLOG_PERMISSIONS:[Ljava/lang/String;

.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private static final CONTACTS_PERMISSIONS:[Ljava/lang/String;

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field public static final HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

.field private static final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field private static final MICROPHONE_PERMISSIONS:[Ljava/lang/String;

.field static final ONE_SECOND:J = 0x3e8L

.field public static final PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

.field private static final PHONE_PERMISSIONS:[Ljava/lang/String;

.field private static final SENSORS_PERMISSIONS:[Ljava/lang/String;

.field private static final SMS_PERMISSIONS:[Ljava/lang/String;

.field private static final STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NubiaPermissionDialog"


# instance fields
.field private final dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCancel:Landroid/widget/Button;

.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountDown:I

.field private final mHandler:Landroid/os/Handler;

.field private mModeAsk:I

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPM:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private final mUserHandle:Landroid/os/UserHandle;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 78
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.ACCEPT_HANDOVER"

    const-string v5, "android.permission.USE_SIP"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    .line 88
    const-string v0, "android.permission.READ_CALL_LOG"

    const-string v1, "android.permission.WRITE_CALL_LOG"

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CALLLOG_PERMISSIONS:[Ljava/lang/String;

    .line 94
    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    .line 100
    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android.permission.READ_SMS"

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    const-string v5, "android.permission.RECEIVE_MMS"

    const-string v6, "android.permission.READ_CELL_BROADCASTS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 108
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    .line 112
    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    .line 116
    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    .line 118
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    .line 120
    const-string v0, "android.permission.BODY_SENSORS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    .line 122
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 126
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CALLLOG_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    .line 139
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    const-string v3, "android.permission.RECEIVE_MMS"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "queue"    # Lcom/android/server/NubiaPermissionDialogReqQueue;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 152
    invoke-direct/range {p0 .. p1}, Lcom/android/server/NubiaBasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v2, Lcom/android/server/NubiaPermissionDialog$3;

    invoke-direct {v2, v0}, Lcom/android/server/NubiaPermissionDialog$3;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    iput-object v2, v0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object v1, v0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 157
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;

    .line 158
    const-string v3, "appops"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 159
    iget-object v3, v0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;

    .line 160
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/NubiaPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 161
    move/from16 v4, p3

    iput v4, v0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    .line 162
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 163
    move/from16 v6, p4

    iput v6, v0, Lcom/android/server/NubiaPermissionDialog;->mUid:I

    .line 164
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/NubiaPermissionDialog;->dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    .line 165
    const/high16 v8, 0x3020000

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/NubiaPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NubiaPermissionDialog;->revokeModeAsk()I

    move-result v8

    iput v8, v0, Lcom/android/server/NubiaPermissionDialog;->mModeAsk:I

    .line 167
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/NubiaPermissionDialog;->setCancelable(Z)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NubiaPermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x30a002c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    .line 171
    iget-object v9, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v10, 0x30800b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 172
    .local v9, "tv":Landroid/widget/TextView;
    iget-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v11, 0x30800af

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mChoice:Landroid/widget/CheckBox;

    .line 173
    iget-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v11, 0x30800a8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    .line 174
    iget-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    new-instance v11, Lcom/android/server/NubiaPermissionDialog$1;

    invoke-direct {v11, v0}, Lcom/android/server/NubiaPermissionDialog$1;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NubiaPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    const/16 v10, 0xf

    iput v10, v0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    .line 181
    iget-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    const v12, 0x30c0014

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    iget v15, v0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v12, 0x30800a7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mConfirm:Landroid/widget/Button;

    .line 183
    iget-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mConfirm:Landroid/widget/Button;

    new-instance v12, Lcom/android/server/NubiaPermissionDialog$2;

    invoke-direct {v12, v0}, Lcom/android/server/NubiaPermissionDialog$2;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/android/server/NubiaPermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 190
    iget-object v11, v0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 191
    :cond_0
    const v12, 0x30c0081

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v12, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v14, 0x30800b1

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x30c0084

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v8

    iget-object v8, v0, Lcom/android/server/NubiaPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v10, v0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    aget-object v8, v8, v10

    aput-object v8, v15, v13

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v8, v0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Lcom/android/server/NubiaPermissionDialog;->setView(Landroid/view/View;)V

    .line 195
    iget-object v8, v0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 196
    const/16 v12, 0xf

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    .line 195
    invoke-virtual {v8, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/server/NubiaPermissionDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/NubiaPermissionDialogReqQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 216
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2200

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 221
    nop

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 225
    :cond_0
    return-object v3

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v3
.end method

.method private revokeModeAsk()I
    .locals 4

    .line 200
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    .local v0, "mode":Ljava/lang/Integer;
    :try_start_0
    const-string v1, "android.app.AppOpsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 203
    .local v1, "AppOpsManager":Ljava/lang/Class;
    const-string v2, "MODE_ASK"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 204
    .local v2, "modeAsk":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v0, v3

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 206
    .end local v1    # "AppOpsManager":Ljava/lang/Class;
    .end local v2    # "modeAsk":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
