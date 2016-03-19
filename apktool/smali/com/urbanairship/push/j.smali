.class public final Lcom/urbanairship/push/j;
.super Lcom/urbanairship/d;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/urbanairship/push/a/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/push/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Lcom/urbanairship/push/g;

.field private final g:Lcom/urbanairship/push/k;

.field private final h:Lcom/urbanairship/a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/urbanairship/push/k;

    invoke-direct {v0, p2}, Lcom/urbanairship/push/k;-><init>(Lcom/urbanairship/l;)V

    new-instance v1, Lcom/urbanairship/push/g;

    invoke-direct {v1, p2}, Lcom/urbanairship/push/g;-><init>(Lcom/urbanairship/l;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/urbanairship/push/j;-><init>(Landroid/content/Context;Lcom/urbanairship/push/k;Lcom/urbanairship/push/g;Lcom/urbanairship/a;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/push/k;Lcom/urbanairship/push/g;Lcom/urbanairship/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Lcom/urbanairship/d;-><init>()V

    .line 180
    const-string v0, "ua_"

    iput-object v0, p0, Lcom/urbanairship/push/j;->a:Ljava/lang/String;

    .line 185
    const-string v0, "device"

    iput-object v0, p0, Lcom/urbanairship/push/j;->b:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/j;->d:Ljava/util/Map;

    .line 190
    iput-boolean v7, p0, Lcom/urbanairship/push/j;->e:Z

    .line 211
    iput-object p2, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    .line 212
    new-instance v0, Lcom/urbanairship/push/a/a;

    invoke-direct {v0, p1}, Lcom/urbanairship/push/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/push/j;->c:Lcom/urbanairship/push/a/e;

    .line 213
    iput-object p3, p0, Lcom/urbanairship/push/j;->f:Lcom/urbanairship/push/g;

    .line 214
    iput-object p4, p0, Lcom/urbanairship/push/j;->h:Lcom/urbanairship/a;

    .line 216
    sget v0, Lcom/urbanairship/j;->a:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->o()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Channel ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->o()Ljava/lang/String;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/j;->d:Ljava/util/Map;

    .line 3038
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3040
    const-string v2, "ua_yes_no_foreground"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "yes"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_yes:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "no"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_no:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    const-string v2, "ua_yes_no_background"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "yes"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_yes:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "no"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_no:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    const-string v2, "ua_accept_decline_foreground"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "accept"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "decline"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    const-string v2, "ua_accept_decline_background"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "accept"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "decline"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    const-string v2, "ua_download_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "download"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_download:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_download:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    const-string v2, "ua_remind_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "remind"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_remind:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_remind:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3118
    const-string v2, "ua_opt_in_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "opt_in"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_opt_in:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    const-string v2, "ua_opt_out_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "opt_out"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_opt_out:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    const-string v2, "ua_follow_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "follow"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    const-string v2, "ua_unfollow_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "unfollow"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    const-string v2, "ua_shop_now_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "shop_now"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_shop_now:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    const-string v2, "ua_buy_now_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "buy_now"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_buy_now:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3196
    const-string v2, "ua_more_like_less_like"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "more_like"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_more_like:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "less_like"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_less_like:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3209
    const-string v2, "ua_like_dislike"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "like"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "dislike"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_dislike:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3222
    const-string v2, "ua_like_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "like"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3236
    const-string v2, "ua_shop_now"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "shop_now"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_shop_now:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3244
    const-string v2, "ua_buy_now"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "buy_now"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_buy_now:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3252
    const-string v2, "ua_follow"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "follow"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    const-string v2, "ua_unfollow"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "unfollow"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    const-string v2, "ua_opt_in"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "opt_in"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_opt_in:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3277
    const-string v2, "ua_opt_out"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "opt_out"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_opt_out:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3285
    const-string v2, "ua_remind_me_later"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "remind"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_remind:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_remind:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    const-string v2, "ua_share"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "share"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    const-string v2, "ua_download"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "download"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_download:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_download:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    const-string v2, "ua_like"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "like"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3317
    const-string v2, "ua_icons_up_down"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "up"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    const-string v5, "thumbs up icon"

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "down"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    const-string v5, "thumbs down icon"

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    const-string v2, "ua_icons_happy_sad"

    new-instance v3, Lcom/urbanairship/push/a/d$a;

    invoke-direct {v3}, Lcom/urbanairship/push/a/d$a;-><init>()V

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "happy"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_happy:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    const-string v5, "happy icon"

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/push/a/c$a;

    const-string v5, "sad"

    invoke-direct {v4, v5}, Lcom/urbanairship/push/a/c$a;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/urbanairship/R$drawable;->ic_notification_button_sad:I

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->b(I)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    const-string v5, "sad icon"

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/a/c$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/urbanairship/push/a/c$a;->a(Z)Lcom/urbanairship/push/a/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/a/c$a;->a()Lcom/urbanairship/push/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/a/d$a;->a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/a/d$a;->a()Lcom/urbanairship/push/a/d;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()V
    .locals 3

    .prologue
    .line 455
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 459
    return-void
.end method

.method static v()V
    .locals 3

    .prologue
    .line 892
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 894
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 895
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->a()V

    .line 227
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/push/j;->h:Lcom/urbanairship/a;

    iget-boolean v0, v0, Lcom/urbanairship/a;->t:Z

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/j;->i:Z

    .line 234
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3832
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->o()Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/urbanairship/push/j;->v()V

    .line 246
    :cond_0
    invoke-static {}, Lcom/urbanairship/push/g;->d()V

    .line 249
    iget-object v0, p0, Lcom/urbanairship/push/j;->f:Lcom/urbanairship/push/g;

    invoke-virtual {v0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    invoke-static {}, Lcom/urbanairship/push/g;->e()V

    .line 253
    :cond_1
    return-void

    .line 230
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/j;->i:Z

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->g(Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->f(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/k;->e(Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    invoke-static {p1}, Lcom/urbanairship/push/n;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/k;->a(Ljava/util/Set;)V

    .line 511
    invoke-static {}, Lcom/urbanairship/push/j;->j()V

    .line 513
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->b(Z)V

    .line 306
    invoke-static {}, Lcom/urbanairship/push/j;->j()V

    .line 307
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/urbanairship/push/a/d;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/urbanairship/push/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/a/d;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/k;->a(Z)V

    .line 280
    invoke-static {}, Lcom/urbanairship/push/j;->j()V

    .line 281
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->b(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->b()Z

    move-result v0

    return v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/k;->a(I)V

    .line 873
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->c(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/k;->d(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->c()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/urbanairship/push/a/e;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/urbanairship/push/j;->c:Lcom/urbanairship/push/a/e;

    return-object v0
.end method

.method final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/k;->a(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/k;->a(I)V

    .line 905
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/k;->d(Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method final f()Lcom/urbanairship/push/k;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->u()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 4353
    :pswitch_0
    iget-object v2, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    .line 406
    invoke-virtual {v2}, Lcom/urbanairship/push/k;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 5353
    :pswitch_1
    iget-object v2, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    .line 408
    invoke-virtual {v2}, Lcom/urbanairship/push/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 419
    .line 6290
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->b()Z

    move-result v0

    .line 419
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6315
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->c()Z

    move-result v0

    .line 419
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Lcom/urbanairship/push/b;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Lcom/urbanairship/push/b$a;

    invoke-direct {v0}, Lcom/urbanairship/push/b$a;-><init>()V

    .line 6522
    iget-object v1, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->g()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    .line 6609
    iget-boolean v1, p0, Lcom/urbanairship/push/j;->e:Z

    .line 428
    invoke-virtual {p0}, Lcom/urbanairship/push/j;->l()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/b$a;->a(ZLjava/util/Set;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/j;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->a(Z)Lcom/urbanairship/push/b$a;

    move-result-object v1

    .line 7290
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->b()Z

    move-result v0

    .line 428
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/urbanairship/push/b$a;->b(Z)Lcom/urbanairship/push/b$a;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->d(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->e(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->u()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 447
    :goto_1
    invoke-virtual {v0}, Lcom/urbanairship/push/b$a;->a()Lcom/urbanairship/push/b;

    move-result-object v0

    return-object v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :pswitch_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->b(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v1

    .line 7915
    iget-object v2, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v2}, Lcom/urbanairship/push/k;->j()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Lcom/urbanairship/push/b$a;->c(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    goto :goto_1

    .line 442
    :pswitch_1
    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/b$a;->b(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v1

    .line 8573
    iget-object v2, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v2}, Lcom/urbanairship/push/k;->k()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {v1, v2}, Lcom/urbanairship/push/b$a;->c(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    goto :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lcom/urbanairship/push/g;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/urbanairship/push/j;->f:Lcom/urbanairship/push/g;

    return-object v0
.end method

.method public final l()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->h()Ljava/util/Set;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/urbanairship/push/n;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 548
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/j;->a(Ljava/util/Set;)V

    .line 551
    :cond_0
    return-object v1
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->d()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->e()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->f()Z

    move-result v0

    return v0
.end method

.method final r()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/urbanairship/push/j;->i:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/urbanairship/push/j;->g:Lcom/urbanairship/push/k;

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
