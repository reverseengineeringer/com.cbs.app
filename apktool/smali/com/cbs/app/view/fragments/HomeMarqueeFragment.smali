.class public final Lcom/cbs/app/view/fragments/HomeMarqueeFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field h:I

.field private j:Ljava/lang/String;

.field private k:Lcom/cbs/app/view/model/DeviceHome;

.field private l:D

.field private m:F

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->h:I

    .line 45
    const-string v0, "???"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/DeviceHome;)Lcom/cbs/app/view/fragments/HomeMarqueeFragment;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;-><init>()V

    .line 53
    iput-object p0, v0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    .line 54
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/HomeMarqueeFragment;)Lcom/cbs/app/view/model/DeviceHome;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    return-object v0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleShow() called with: optionalId = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], action = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], target = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {p1, p2}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v5

    .line 292
    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 297
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 298
    invoke-virtual {v0, v5}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 301
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 303
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    if-eqz p1, :cond_0

    .line 312
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_0
    const-string v1, "appState"

    const-string v2, "cbscom:Homescreen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    if-eqz p2, :cond_1

    .line 317
    const-string v1, "target"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    const-string v1, "position"

    iget v2, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    if-eqz p3, :cond_2

    .line 322
    const-string v1, "optionalId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_2
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    if-eqz p4, :cond_3

    .line 326
    const-string v1, "cid"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_3
    if-eqz p5, :cond_4

    .line 329
    const-string v1, "ShowTitle"

    iget-object v2, p5, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "showId"

    iget-wide v2, p5, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p5, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v2, "evar_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v2, "prop_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v2, Lcom/cbs/app/analytics/Action;->au:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 340
    return-void
.end method


# virtual methods
.method public final b(Lcom/cbs/app/view/model/DeviceHome;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceHome;->getAction()Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceHome;->getTarget()Ljava/util/List;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 180
    :goto_1
    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceHome;->getOptional_id()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceHome;->getPid()Ljava/lang/String;

    move-result-object v4

    .line 1189
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1194
    :goto_2
    if-eqz v1, :cond_1

    const-string v0, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "show_section"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 1195
    invoke-direct {p0, v6, v7, v1, v2}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_0
    :goto_3
    return-void

    .line 1191
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-wide v6, v8

    goto :goto_2

    .line 1203
    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    .line 1204
    invoke-direct {p0, v6, v7, v1, v2}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1207
    :cond_2
    if-eqz v1, :cond_6

    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1208
    if-eqz v2, :cond_3

    .line 1209
    const-string v0, "/all-access/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1210
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1211
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1212
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1213
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    :cond_3
    :goto_4
    move-object v0, p0

    .line 1226
    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    goto :goto_3

    .line 1214
    :cond_4
    const-string v0, "cbs:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1217
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_4

    .line 1219
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1221
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1222
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1229
    :cond_6
    if-eqz v1, :cond_8

    const-string v0, "embeddedURL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1231
    if-eqz v2, :cond_0

    .line 1232
    const-string v0, "/all-access/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1233
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1234
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1235
    invoke-static {v10}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1236
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 1239
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v3, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1241
    const-string v3, "launchUrl"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1244
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1252
    :cond_8
    if-eqz v1, :cond_0

    const-string v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "handleVideo() called with: optionId = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], pid = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], action = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], target = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-static {v6, v7}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v5

    .line 1278
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_9

    .line 1281
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1282
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 1283
    invoke-virtual {v0, v5, v4}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;)V

    .line 1285
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    goto/16 :goto_3

    :cond_a
    move-object v2, v5

    goto/16 :goto_1

    :cond_b
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    if-eqz p1, :cond_0

    const-string v0, "HomeMarqueeFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "HomeMarqueeFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->j:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->l:D

    .line 73
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->l:D

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->m:F

    .line 77
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 81
    const v0, 0x7f030068

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    const-string v0, "ANONYMOUS"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->n:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->n:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceHome;->getSvod_flag()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 96
    const v0, 0x7f0f01b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_2

    .line 105
    const v0, 0x7f0f01af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    :cond_2
    if-eqz v0, :cond_3

    .line 108
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :goto_0
    new-instance v2, Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;-><init>(Lcom/cbs/app/view/fragments/HomeMarqueeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->k:Lcom/cbs/app/view/model/DeviceHome;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/DeviceHome;->getFilepath()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-wide v4, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->l:D

    iget v3, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->m:F

    invoke-static {v2, v4, v5, v3}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2, v0}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 133
    :cond_4
    return-object v1

    .line 113
    :cond_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide v4, 0x407f400000000000L    # 500.0

    invoke-static {v3, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide v6, 0x406a200000000000L    # 209.0

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 142
    return-void
.end method

.method public final onDetach()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 146
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "HomeMarqueeFragment:Content"

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 138
    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->h:I

    .line 59
    return-void
.end method
