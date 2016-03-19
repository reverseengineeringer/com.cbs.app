.class public final Lcom/cbs/app/view/utils/VideoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/utils/VideoUtil$a;,
        Lcom/cbs/app/view/utils/VideoUtil$b;,
        Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/cbs/app/view/utils/VideoUtil;->a:Ljava/lang/String;

    .line 100
    sput-object v0, Lcom/cbs/app/view/utils/VideoUtil;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    sparse-switch p0, :sswitch_data_0

    .line 1068
    const-string v0, "3F"

    .line 1071
    :goto_0
    return-object v0

    .line 1059
    :sswitch_0
    const-string v0, "FF"

    goto :goto_0

    .line 1062
    :sswitch_1
    const-string v0, "BF"

    goto :goto_0

    .line 1065
    :sswitch_2
    const-string v0, "80"

    goto :goto_0

    .line 1057
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_2
        0x4b -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1036
    const-string v0, "16777215"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const-string v0, "FFFFFF"

    .line 1052
    :goto_0
    return-object v0

    .line 1038
    :cond_0
    const-string v0, "16711680"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    const-string v0, "FF0000"

    goto :goto_0

    .line 1040
    :cond_1
    const-string v0, "65280"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    const-string v0, "00FF00"

    goto :goto_0

    .line 1042
    :cond_2
    const-string v0, "16776960"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    const-string v0, "0000FF"

    goto :goto_0

    .line 1044
    :cond_3
    const-string v0, "12277397"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    const-string v0, "FFFF00"

    goto :goto_0

    .line 1046
    :cond_4
    const-string v0, "558497"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1047
    const-string v0, "FF00FF"

    goto :goto_0

    .line 1049
    :cond_5
    const-string v0, "000000"

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    if-eqz p0, :cond_2

    .line 280
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 281
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 282
    if-eqz v3, :cond_0

    const-string v4, "AVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PREMIUM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DELAYED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_2
    return-object v1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1200
    if-eqz p0, :cond_0

    .line 1201
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v0, :cond_1

    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAPTIONING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/cast/CBSCaptionsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1205
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 691
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v1

    .line 693
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v1

    .line 696
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 700
    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 702
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->O()J

    move-result-wide v4

    .line 703
    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->e()J

    move-result-wide v0

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "duration: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " currentPos: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 705
    const-wide/16 v6, 0x7530

    sub-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local resume saving time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 707
    new-instance v0, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 708
    invoke-interface {v0, p0, v2, v4, v5}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    const-string v1, "VideoUtil"

    const-string v2, "Failed to get current media position"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    const-string v1, "media"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 667
    const-string v1, "startPoint"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-string v1, "shouldStart"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v1

    .line 670
    const-string v2, "ccl-start-cast-activity"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 671
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/ThumbNailView;Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 170
    .line 171
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getType()I

    move-result v0

    .line 178
    :goto_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {p2}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    .line 187
    :goto_1
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1, v3}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p1, v1}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 505
    .line 506
    invoke-static {p0}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(Landroid/content/Context;)V

    .line 507
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 511
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v2, v3, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V

    .line 521
    :goto_1
    return-void

    .line 515
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    const-string v1, "videoData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 517
    const-string v1, "EXTRA_DISABLE_FULLSCREEN_BUTTON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    sput-boolean v2, Lcom/cbs/app/GlobalConstants;->c:Z

    .line 519
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V
    .locals 16

    .prologue
    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    const-wide/32 v4, 0x3a9bf67

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 530
    const-string v3, "This show is not available for casting."

    .line 3274
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3275
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b00e9

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3276
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "CBS"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Ok"

    new-instance v6, Lcom/cbs/app/view/utils/VideoUtil$6;

    invoke-direct {v6, v3}, Lcom/cbs/app/view/utils/VideoUtil$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3288
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3289
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3290
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;)V

    .line 535
    new-instance v2, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Date;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cbs/app/view/utils/VideoUtil;->a:Ljava/lang/String;

    .line 540
    const-string v7, "application/x-mpegURL"

    .line 542
    new-instance v8, Lcom/google/android/gms/cast/e;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Lcom/google/android/gms/cast/e;-><init>(I)V

    .line 545
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-static/range {p1 .. p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static/range {p1 .. p1}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-static/range {p1 .. p1}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    .line 552
    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 554
    const-string v4, "videos"

    invoke-static {v4, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    new-instance v5, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 558
    new-instance v4, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 559
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 560
    invoke-virtual {v8, v5}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 561
    invoke-virtual {v8, v4}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 562
    invoke-virtual {v8, v2}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    .line 564
    const-string v2, "use_cc_vod_override"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 565
    const-string v2, "cc_vod_override"

    const-string v5, "ktvq5uy60wOw7GO6OoOYk2Cdd2YpS_EH"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    if-eqz v4, :cond_d

    .line 571
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;)Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;

    move-result-object v5

    .line 572
    const/4 v4, 0x0

    .line 573
    const/4 v3, 0x0

    .line 574
    if-eqz v5, :cond_2

    .line 575
    invoke-virtual {v5}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getAgeGroup()Ljava/lang/String;

    move-result-object v4

    .line 576
    invoke-virtual {v5}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 578
    :cond_2
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v5

    .line 579
    invoke-static {v5}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v9

    .line 587
    const/4 v5, 0x0

    .line 588
    const/4 v6, 0x0

    .line 589
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 591
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthZToken()Lcom/adobe/adobepass/accessenabler/a/b;

    move-result-object v10

    .line 593
    if-eqz v10, :cond_3

    .line 594
    invoke-virtual {v10}, Lcom/adobe/adobepass/accessenabler/a/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 597
    :cond_3
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v10

    .line 599
    if-eqz v10, :cond_b

    .line 600
    invoke-virtual {v10}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    move-object v6, v5

    move-object v5, v14

    .line 604
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 605
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\n   \"user_subscription_level\": "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",\n   \"age_group\": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_5

    const-string v4, "null"

    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",\n   \"gender\": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_6

    const-string v3, "null"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n    \"cast_resume\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n   \"cbs_com_cookie\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v10, :cond_7

    const-string v3, "null"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n   \"mvpd\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v5, :cond_8

    const-string v3, "null"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n   \"mvpd_token\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_4

    const-string v6, "null"

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n   \"sender_component_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string v3, "null"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n   \"sender\": \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "android-tablet-app"

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 634
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 636
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_9
    new-instance v4, Lcom/google/android/gms/cast/d$a;

    invoke-direct {v4, v2}, Lcom/google/android/gms/cast/d$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/android/gms/cast/d$a;->a(I)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/cast/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/d$a;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/cast/d$a;->a(Lcom/google/android/gms/cast/e;)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/d$a;->a(Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d$a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v2

    .line 649
    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v2

    .line 651
    move-wide/from16 v0, p2

    long-to-int v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 605
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "\""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_a
    const-string v3, "android-phone-app"

    goto/16 :goto_8

    .line 638
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v4

    goto/16 :goto_9

    :cond_b
    move-object v14, v6

    move-object v6, v5

    move-object v5, v14

    goto/16 :goto_2

    :cond_c
    move-object v14, v6

    move-object v6, v5

    move-object v5, v14

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/cbs/app/view/utils/VideoUtil$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/utils/VideoUtil$2;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-static {p0, p1, p2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    .line 330
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 471
    .line 472
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 476
    :goto_0
    if-eqz v0, :cond_1

    .line 481
    invoke-static {p0, p1, p4, p5, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JZ)V

    .line 483
    sget-object v0, Lcom/cbs/app/analytics/Action;->bY:Lcom/cbs/app/analytics/Action;

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v2, "events"

    const-string v3, "event91"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v2, "appState"

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v2, "ChromecastVideoTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 2869
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2848
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2849
    const-string v1, "videoData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2850
    if-eqz p3, :cond_2

    cmp-long v1, p4, v4

    if-lez v1, :cond_2

    .line 2851
    const-string v1, "resumeMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2852
    const-string v1, "resumeTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2855
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2863
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchToShowFragment() called with: context = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], videoData = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], inShowItem = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], resumeMode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], resumeTime = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    .line 2864
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 2865
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2867
    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_4

    .line 2869
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;IJ)V

    goto :goto_1

    .line 2872
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2873
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 2876
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2877
    const-string v0, "selectedVideo"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2878
    if-eqz p3, :cond_5

    cmp-long v0, p4, v4

    if-lez v0, :cond_5

    .line 2879
    const-string v0, "resumeMode"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2880
    const-string v0, "resumeTime"

    invoke-virtual {v2, v0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2883
    :cond_5
    const-class v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 2884
    invoke-virtual {v0, p2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 2885
    invoke-virtual {v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 2888
    const v2, 0x7f0f02bc

    const-string v3, "fragment_show_home"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 2889
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;JLcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 9

    .prologue
    .line 902
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    :goto_0
    return-void

    .line 905
    :cond_0
    new-instance v0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/ResumeDialogFragment;-><init>()V

    .line 906
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->setVideoData(Lcom/cbs/app/view/model/VideoData;)V

    .line 907
    new-instance v1, Lcom/cbs/app/view/utils/VideoUtil$3;

    const/4 v5, 0x1

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/cbs/app/view/utils/VideoUtil$3;-><init>(Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->setListener(Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;)V

    .line 922
    check-cast p0, Landroid/app/Activity;

    .line 923
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "VideoUtil"

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-static {p1}, Lcom/cbs/app/view/NielsenDialogHelper;->setVideoWeWantedToSee(Lcom/cbs/app/view/model/VideoData;)V

    .line 344
    invoke-static {p2}, Lcom/cbs/app/view/NielsenDialogHelper;->setShowWeWantToSee(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 345
    new-instance v0, Lcom/cbs/app/view/utils/VideoUtil$a;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/utils/VideoUtil$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/cbs/app/view/NielsenDialogHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;)V

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    const/4 v2, 0x0

    .line 1356
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1358
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getCCContentId()Ljava/lang/String;

    move-result-object v2

    .line 1361
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1364
    :cond_3
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1366
    invoke-static {p0, p1, p2, p3}, Lcom/cbs/app/view/utils/VideoUtil;->d(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    goto :goto_0

    .line 2150
    :cond_4
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserType()I

    move-result v2

    .line 2151
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 1369
    :cond_5
    if-eqz v0, :cond_6

    .line 1371
    const-string v0, "Homescreen"

    invoke-static {p0, v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :cond_6
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1374
    invoke-static {p0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1376
    :cond_7
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1377
    invoke-static {p0, p1, p2}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    goto :goto_0

    .line 1387
    :cond_8
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1388
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 1389
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    .line 1391
    :cond_9
    if-eqz v0, :cond_0

    .line 1394
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1395
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 1396
    const-string v2, "media"

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1398
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 736
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 737
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    .prologue
    .line 741
    if-eqz p0, :cond_3

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->N(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v6

    .line 746
    new-instance v7, Lcom/google/android/gms/cast/e;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Lcom/google/android/gms/cast/e;-><init>(I)V

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channel name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channel description: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    move-object/from16 v0, p3

    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    move-object/from16 v0, p4

    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    if-eqz p2, :cond_0

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    const-string v3, "http://wwwimage.cbsstatic.com/base/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual/range {p2 .. p2}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    const-string v4, "http://wwwimage.cbsstatic.com/base/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual/range {p2 .. p2}, Lcom/cbs/app/view/model/Affiliate;->getSmallLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 766
    const/16 v4, 0xc8

    invoke-static {v2, v4}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 770
    new-instance v5, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 771
    new-instance v4, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 772
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 773
    invoke-virtual {v7, v5}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 774
    invoke-virtual {v7, v4}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 775
    invoke-virtual {v7, v2}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    .line 779
    :cond_0
    const-string v8, "application/x-mpegURL"

    .line 780
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;)Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;

    move-result-object v4

    .line 781
    const/4 v2, 0x0

    .line 782
    const/4 v3, 0x0

    .line 783
    if-eqz v4, :cond_1

    .line 784
    invoke-virtual {v4}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getAgeGroup()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-virtual {v4}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 787
    :cond_1
    const/4 v5, 0x0

    .line 788
    const/4 v4, 0x0

    .line 789
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 790
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthZToken()Lcom/adobe/adobepass/accessenabler/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/b;->d()Ljava/lang/String;

    move-result-object v5

    .line 792
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v4

    .line 794
    :cond_2
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 795
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v10

    .line 796
    invoke-static {v10}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v10

    .line 797
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\n   \"user_subscription_level\": "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",\n   \"age_group\": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_4

    const-string v2, "null"

    :goto_0
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",\n   \"gender\": "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_5

    const-string v2, "null"

    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"cbs_com_cookie\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v9, :cond_6

    const-string v2, "null"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"mvpd\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v4, :cond_7

    const-string v2, "null"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"mvpd_token\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v5, :cond_8

    const-string v2, "null"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"sender_component_id\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, "null"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"sender\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "android-tablet-app"

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n   \"stationId\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"mediaId\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getMediaId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n    \"cast_resume\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"stationName\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"latitude\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n   \"longitude\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 827
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_a
    new-instance v3, Lcom/google/android/gms/cast/d$a;

    const-string v4, "70C7B4F3-E4B7-13C3-0A99-E1A1C2DE72CD"

    invoke-direct {v3, v4}, Lcom/google/android/gms/cast/d$a;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/d$a;->a(I)Lcom/google/android/gms/cast/d$a;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/cast/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/d$a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/gms/cast/d$a;->a(Lcom/google/android/gms/cast/e;)Lcom/google/android/gms/cast/d$a;

    move-result-object v3

    invoke-static {p0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/d$a;->a(Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/cast/d$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/d$a;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d$a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v2

    .line 838
    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v2

    .line 839
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 842
    :cond_3
    return-void

    .line 797
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_a
    const-string v2, "android-phone-app"

    goto/16 :goto_6

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_c
    const-string v2, "null"

    goto/16 :goto_8

    :cond_d
    const-string v2, "null"

    goto/16 :goto_9

    .line 829
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_a
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/cast/j;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v2, 0x0

    .line 1089
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1091
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1093
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1095
    new-instance v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 1096
    const-string v4, "ccSettingTurnedOn"

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->a()F

    move-result v0

    .line 1101
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 1102
    const/16 v0, 0xfa

    .line 1111
    :goto_1
    const-string v4, "ccFontSize"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1113
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 1115
    const-string v4, "ccFontFace"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1117
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->b()I

    move-result v0

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "settingsFontColor hex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "settings font color alpha: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " g: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1128
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1131
    const-string v5, "ccFontOpacity"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1135
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "font color alpha: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " g: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " b: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1141
    const-string v0, "ccFontColor"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1144
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->d()I

    .line 1146
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1171
    :goto_2
    :pswitch_0
    const-string v0, "ccFontEdgeType"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1172
    invoke-virtual {p1}, Lcom/google/android/gms/cast/j;->c()I

    move-result v0

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settingsBackgroundColor hex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "background color alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1182
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1184
    const-string v2, "ccBackgroundColor"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "background color alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v10

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1191
    const-string v1, "ccBackgroundOpacity"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1193
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1197
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1096
    goto/16 :goto_0

    .line 1103
    :cond_2
    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 1104
    const/16 v0, 0xc8

    goto/16 :goto_1

    .line 1105
    :cond_3
    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_4

    .line 1106
    const/16 v0, 0x96

    goto/16 :goto_1

    .line 1108
    :cond_4
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 1148
    :pswitch_1
    const/4 v2, 0x2

    .line 1149
    goto/16 :goto_2

    .line 1151
    :pswitch_2
    const/4 v2, 0x5

    .line 1152
    goto/16 :goto_2

    .line 1157
    :pswitch_3
    const/4 v2, 0x3

    .line 1158
    goto/16 :goto_2

    :pswitch_4
    move v2, v1

    .line 1161
    goto/16 :goto_2

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserType()I

    move-result v1

    .line 128
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    return v0
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)Z
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSubscriptionLevel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSubscriptionLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :cond_0
    return v0
.end method

.method public static a([Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;
    .locals 6

    .prologue
    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    if-eqz p0, :cond_2

    .line 249
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    .line 250
    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_1

    const-string v5, "AVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PREMIUM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DELAYED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1076
    if-eqz p0, :cond_0

    .line 1077
    new-instance v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 1078
    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/j;

    move-result-object v0

    .line 1080
    :cond_0
    return-object v0
.end method

.method public static b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getTopLevelCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getTopLevelCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "News"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;)V
    .locals 5

    .prologue
    .line 930
    if-eqz p1, :cond_2

    .line 931
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    const-string v0, "VOD premium"

    .line 940
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 941
    const-string v2, "Video Type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/cbs/app/analytics/Action;->bT:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 945
    if-eqz p0, :cond_0

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 948
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b00e4

    invoke-direct {v2, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 950
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 951
    const v3, 0x7f03004f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 952
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 954
    new-instance v0, Lcom/cbs/app/view/utils/VideoUtil$4;

    invoke-direct {v0}, Lcom/cbs/app/view/utils/VideoUtil$4;-><init>()V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 962
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 963
    new-instance v1, Lcom/cbs/app/view/utils/VideoUtil$5;

    invoke-direct {v1, v0}, Lcom/cbs/app/view/utils/VideoUtil$5;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 971
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 973
    :cond_0
    return-void

    .line 934
    :cond_1
    const-string v0, "VOD free"

    goto :goto_0

    .line 938
    :cond_2
    const-string v0, "Live TV"

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/cbs/app/view/utils/VideoUtil;->e(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserType()I

    move-result v1

    .line 211
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method static synthetic c(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/cbs/app/view/utils/VideoUtil;->d(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->getUserTypeDescription()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    return v0
.end method

.method public static c(Lcom/cbs/app/view/model/VideoData;)Z
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/cbs/app/view/utils/VideoUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getThumbnailSet()Ljava/util/List;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 294
    new-instance v0, Lcom/cbs/app/view/utils/VideoUtil$1;

    invoke-direct {v0}, Lcom/cbs/app/view/utils/VideoUtil$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Thumbnail;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Thumbnail;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 4

    .prologue
    .line 417
    const-class v1, Lcom/cbs/app/view/utils/VideoUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/VideoUtil;->b:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 423
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/view/utils/VideoUtil$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/cbs/app/view/utils/VideoUtil$b;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    invoke-interface {v0, p0, v2, v3}, Lcom/cbs/app/service/ShowService;->h(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_0
    monitor-exit v1

    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/cbs/app/view/utils/VideoUtil;->e(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    .line 440
    new-instance v0, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 441
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/cbs/app/view/model/db/MyRecentVideo;

    move-result-object v0

    .line 442
    const-wide/16 v4, -0x1

    .line 443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getMedTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getMedTime()J

    move-result-wide v4

    .line 449
    :cond_0
    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 451
    invoke-static/range {v1 .. v6}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;JLcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_1
    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V

    goto :goto_0
.end method

.method public static getCCContentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {v1}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 686
    :cond_0
    return-object v0
.end method

.method public static getDefaultTextTrackStyle()Lcom/google/android/gms/cast/j;
    .locals 1

    .prologue
    .line 1084
    new-instance v0, Lcom/google/android/gms/cast/j;

    invoke-direct {v0}, Lcom/google/android/gms/cast/j;-><init>()V

    return-object v0
.end method

.method public static getUserType()I
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getType()I

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method public static getUserTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 197
    :cond_0
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setVOStyleInCCPreferences(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/16 v5, 0x64

    .line 989
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 991
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 992
    const-string v1, "ccFontColor"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    const-string v2, "ccFontOpacity"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 994
    const-string v3, "ccFontEdgeType"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 995
    const-string v4, "ccFontSize"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 996
    const-string v5, "ccBackgroundColor"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 997
    const-string v6, "ccFontFace"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 998
    const-string v7, "ccBackgroundOpacity"

    const/16 v8, 0x4b

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 999
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fontColor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " fontOpacity: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " fontEdgeTye: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "fontSize: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ccBackgroundColor: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " fontFace: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ccBackgroundOpacity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1003
    new-instance v1, Lcom/cbs/app/cast/CBSTracksPreferenceManager;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 1004
    invoke-virtual {v1, v6}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setFontFamily(Ljava/lang/String;)V

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cbs/app/view/utils/VideoUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1006
    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setBackgroundOpacity(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cbs/app/view/utils/VideoUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setTextColor(Ljava/lang/String;)V

    .line 1008
    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setTextOpacity(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v1, v6}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setFontFamily(Ljava/lang/String;)V

    .line 1011
    packed-switch v3, :pswitch_data_0

    .line 1025
    :pswitch_0
    const-string v0, "EDGE_TYPE_NONE"

    .line 1029
    :goto_0
    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setEdgeType(Ljava/lang/String;)V

    .line 1032
    :cond_0
    return-void

    .line 1013
    :pswitch_1
    const-string v0, "EDGE_TYPE_RAISED"

    goto :goto_0

    .line 1016
    :pswitch_2
    const-string v0, "EDGE_TYPE_DEPRESSED"

    goto :goto_0

    .line 1019
    :pswitch_3
    const-string v0, "EDGE_TYPE_OUTLINE"

    goto :goto_0

    .line 1022
    :pswitch_4
    const-string v0, "EDGE_TYPE_DROP_SHADOW"

    goto :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
