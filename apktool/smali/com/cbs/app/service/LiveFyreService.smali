.class public Lcom/cbs/app/service/LiveFyreService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/service/LiveFyreService$a;,
        Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;

.field private static o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/content/Context;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field public b:Lorg/json/JSONObject;

.field public c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;

.field public e:I

.field public f:I

.field public g:Lorg/json/JSONArray;

.field public h:Lorg/json/JSONArray;

.field public i:Z

.field public j:Z

.field k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

.field l:I

.field m:Lcom/c/a/a/e;

.field private final r:Ljava/lang/Object;

.field private final s:Ljava/lang/Object;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$1;

    invoke-direct {v0}, Lcom/cbs/app/service/LiveFyreService$1;-><init>()V

    sput-object v0, Lcom/cbs/app/service/LiveFyreService;->o:Ljava/util/Comparator;

    .line 60
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$2;

    invoke-direct {v0}, Lcom/cbs/app/service/LiveFyreService$2;-><init>()V

    sput-object v0, Lcom/cbs/app/service/LiveFyreService;->p:Ljava/util/Comparator;

    .line 79
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$3;

    invoke-direct {v0}, Lcom/cbs/app/service/LiveFyreService$3;-><init>()V

    sput-object v0, Lcom/cbs/app/service/LiveFyreService;->q:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->s:Ljava/lang/Object;

    .line 140
    iput-boolean v1, p0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 144
    iput v1, p0, Lcom/cbs/app/service/LiveFyreService;->e:I

    .line 145
    iput v1, p0, Lcom/cbs/app/service/LiveFyreService;->f:I

    .line 146
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 147
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    .line 148
    iput-boolean v2, p0, Lcom/cbs/app/service/LiveFyreService;->i:Z

    .line 149
    iput-boolean v1, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    .line 150
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/LiveFyreService$4;-><init>(Lcom/cbs/app/service/LiveFyreService;)V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    .line 164
    iput v1, p0, Lcom/cbs/app/service/LiveFyreService;->l:I

    .line 165
    iput v2, p0, Lcom/cbs/app/service/LiveFyreService;->t:I

    .line 166
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    .line 168
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    .line 169
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->w:Ljava/lang/String;

    .line 170
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->x:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    .line 172
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    .line 184
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->B:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/LiveFyreService$5;-><init>(Lcom/cbs/app/service/LiveFyreService;)V

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->m:Lcom/c/a/a/e;

    .line 248
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iput-object p4, p0, Lcom/cbs/app/service/LiveFyreService;->x:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v0, "cbs.fyre.co"

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    .line 265
    const-string v0, "333388"

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->w:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->m:Lcom/c/a/a/e;

    .line 1290
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "articleId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/b/a/a/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bs3/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1295
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/service/LiveFyreService;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/init"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    sget-object v2, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v2}, Lcom/c/a/a/a;->a()V

    .line 1301
    sget-object v2, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/c/a/a/a;->a(Ljava/lang/String;Lcom/c/a/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :goto_0
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    invoke-virtual {v1, v0, v5}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/cbs/app/service/LiveFyreService;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/service/LiveFyreService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 649
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 651
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v3

    sget-object v3, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v4, "problem adding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 659
    :try_start_1
    const-string v4, "content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 661
    :catch_1
    move-exception v0

    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v4, "content not found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 665
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 676
    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->o:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 680
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 682
    :try_start_2
    const-string v4, "content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "after: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "createdAt"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 685
    :catch_2
    move-exception v0

    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v4, "content not found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 668
    :pswitch_0
    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->p:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 672
    :pswitch_1
    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->q:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 689
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 690
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 692
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 693
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 690
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :catch_3
    move-exception v2

    sget-object v2, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v3, "content not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 698
    :cond_3
    return-object v0

    .line 665
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/cbs/app/service/LiveFyreService;)V
    .locals 2

    .prologue
    .line 29
    .line 3277
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    .line 3278
    invoke-interface {v0}, Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;->b()V

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/service/LiveFyreService;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/cbs/app/service/LiveFyreService;->t:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    .line 272
    invoke-interface {v0}, Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;->a()V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cbs/app/service/LiveFyreService;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cbs/app/service/LiveFyreService;->c()V

    return-void
.end method

.method static synthetic e(Lcom/cbs/app/service/LiveFyreService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/service/LiveFyreService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 595
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 598
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 599
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v3, "id not found"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 607
    :cond_1
    return-object v1
.end method

.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->i:Z

    if-eqz v0, :cond_2

    .line 435
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 437
    :try_start_1
    iget-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    if-nez v0, :cond_1

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 439
    iget v0, p0, Lcom/cbs/app/service/LiveFyreService;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/service/LiveFyreService;->l:I

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refreshing: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/service/LiveFyreService;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    new-instance v0, Lcom/cbs/app/service/LiveFyreService$a;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/LiveFyreService$a;-><init>(Lcom/cbs/app/service/LiveFyreService;)V

    .line 1460
    iget-boolean v2, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    if-eqz v2, :cond_1

    .line 1461
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1462
    const-string v2, "1"

    iput-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    .line 1464
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/b/a/a/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "stream1."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/v3.0/collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1471
    sget-object v3, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v3}, Lcom/c/a/a/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    :try_start_2
    sget-object v3, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v3, v2, v0}, Lcom/c/a/a/a;->a(Ljava/lang/String;Lcom/c/a/a/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    :cond_2
    monitor-exit p0

    return-void

    .line 1475
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 433
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 585
    iput p1, p0, Lcom/cbs/app/service/LiveFyreService;->t:I

    .line 586
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/cbs/app/service/LiveFyreService;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 588
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/c/a/a/e;)V
    .locals 4

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    :goto_0
    iget-boolean v1, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 513
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    sget-object v1, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v2, "thread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contentId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "collectionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :try_start_1
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/c/a/a/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :cond_1
    :goto_2
    return-void

    .line 524
    :catch_1
    move-exception v0

    .line 525
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    const-string v1, "Unable to like comment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/c/a/a/e;)V
    .locals 5

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    :goto_0
    iget-boolean v1, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 542
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    sget-object v1, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v2, "thread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 548
    :cond_0
    iget-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "posting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collectionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " networkDomain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    .line 2053
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 2054
    const-string v4, "lftoken"

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2057
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/b/a/a/a;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/b/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/b/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/api/v3.0/collection/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2065
    new-instance v1, Lcom/c/a/a/f;

    invoke-direct {v1}, Lcom/c/a/a/f;-><init>()V

    .line 2066
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Lcom/c/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2069
    const-string v2, "parent_id"

    invoke-virtual {v1, v2, p1}, Lcom/c/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_1
    sget-object v2, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p3}, Lcom/c/a/a/a;->a(Ljava/lang/String;Lcom/c/a/a/f;Lcom/c/a/a/c;)V

    .line 557
    :cond_2
    :goto_2
    return-void

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    const-string v1, "Unable to post comment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 612
    if-eqz p1, :cond_2

    .line 614
    :try_start_0
    iget-object v3, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    const/4 v0, 0x2

    :try_start_1
    new-array v4, v0, [Lorg/json/JSONArray;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 2703
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    .line 2704
    :goto_0
    if-ge v2, v8, :cond_1

    aget-object v6, v4, v2

    move v0, v1

    .line 2705
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 2706
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2704
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 615
    :cond_1
    iput-object v5, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 616
    monitor-exit v3

    .line 621
    :cond_2
    :goto_2
    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    :catch_0
    move-exception v0

    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v1, "problem appending"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 625
    if-eqz p1, :cond_1

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 628
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 630
    const/4 v1, 0x0

    .line 631
    if-eqz v0, :cond_2

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 632
    check-cast v0, Ljava/lang/String;

    .line 634
    :goto_1
    if-eqz v0, :cond_0

    .line 636
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    sget-object v0, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v1, "key not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 743
    .line 745
    :try_start_0
    const-string v3, "content"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v5, v3

    .line 751
    :goto_0
    if-eqz v5, :cond_2

    .line 753
    :try_start_1
    const-string v3, "id"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v4, v3

    .line 761
    :goto_1
    if-eqz v5, :cond_3

    .line 763
    :try_start_2
    const-string v3, "parentId"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v3, v0

    .line 770
    :goto_2
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "looking for id: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " or parent id: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_0
    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    .line 776
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 780
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 781
    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 782
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 783
    const-string v9, "bodyHtml"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 784
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 786
    const-string v6, "bodyHtml"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 787
    const-string v6, "updatedAt"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 788
    const-string v6, "bodyHtml"

    const-string v8, "bodyHtml"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    const-string v6, "updatedAt"

    const-string v8, "updatedAt"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move v1, v2

    .line 817
    :cond_1
    :goto_4
    return v1

    .line 747
    :catch_0
    move-exception v3

    sget-object v3, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v4, "content not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    goto :goto_0

    .line 756
    :catch_1
    move-exception v3

    sget-object v3, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v4, "id not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v4, v0

    goto :goto_1

    .line 766
    :catch_2
    move-exception v3

    sget-object v3, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v6, "parentId not found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v0

    goto :goto_2

    .line 794
    :cond_4
    :try_start_4
    const-string v7, "childContent"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 795
    if-eqz v6, :cond_6

    .line 796
    invoke-virtual {p0, v6, p2}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v7

    .line 797
    if-eqz v7, :cond_5

    move v1, v2

    .line 799
    goto :goto_4

    .line 801
    :cond_5
    if-eqz v3, :cond_6

    .line 802
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 803
    invoke-virtual {v6, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move v1, v2

    .line 805
    goto :goto_4

    .line 813
    :catch_3
    move-exception v6

    sget-object v6, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v7, "json ex replace children"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inserting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {p0, v0, p1}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v0

    .line 726
    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 730
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComments()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 487
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 489
    monitor-exit v1

    .line 490
    return-object v0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLiveFyreToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLiveFyreToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getPageContent()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/cbs/app/service/LiveFyreService;->i:Z

    if-eqz v0, :cond_1

    .line 350
    iget v0, p0, Lcom/cbs/app/service/LiveFyreService;->f:I

    if-le v0, v2, :cond_0

    .line 351
    iput v2, p0, Lcom/cbs/app/service/LiveFyreService;->f:I

    .line 353
    :cond_0
    new-instance v5, Lcom/cbs/app/service/LiveFyreService$6;

    invoke-direct {v5, p0}, Lcom/cbs/app/service/LiveFyreService$6;-><init>(Lcom/cbs/app/service/LiveFyreService;)V

    .line 408
    iget v0, p0, Lcom/cbs/app/service/LiveFyreService;->f:I

    if-nez v0, :cond_2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageContentLength4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    iget v1, p0, Lcom/cbs/app/service/LiveFyreService;->t:I

    invoke-static {v0, v1}, Lcom/cbs/app/service/LiveFyreService;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageContentLength5:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {p0}, Lcom/cbs/app/service/LiveFyreService;->c()V

    .line 413
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->A:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 414
    new-instance v1, Lcom/cbs/app/service/LiveFyreService$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/service/LiveFyreService$7;-><init>(Lcom/cbs/app/service/LiveFyreService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 422
    :goto_0
    iget v2, p0, Lcom/cbs/app/service/LiveFyreService;->f:I

    if-ge v0, v2, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 1312
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;

    const-string v3, "nPages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v4, v2

    .line 1316
    :goto_1
    if-gez v0, :cond_4

    .line 1317
    add-int v2, v0, v4

    move v3, v2

    .line 1319
    :goto_2
    if-ltz v3, :cond_3

    if-ge v3, v4, :cond_3

    .line 1321
    const/4 v2, 0x0

    .line 1323
    :try_start_1
    iget-object v4, p0, Lcom/cbs/app/service/LiveFyreService;->c:Lorg/json/JSONObject;

    const-string v6, "pathBase"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1327
    :goto_3
    if-eqz v2, :cond_3

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/b/a/a/a;->a:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/cbs/app/service/LiveFyreService;->u:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/bs3"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1336
    sget-object v3, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v3}, Lcom/c/a/a/a;->a()V

    .line 1338
    :try_start_2
    sget-object v3, Lcom/b/a/a/c;->a:Lcom/c/a/a/a;

    invoke-virtual {v3, v2, v5}, Lcom/c/a/a/a;->a(Ljava/lang/String;Lcom/c/a/a/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 422
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v2

    sget-object v2, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v3, "nPages not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_1

    .line 1325
    :catch_1
    move-exception v4

    sget-object v4, Lcom/cbs/app/service/LiveFyreService;->n:Ljava/lang/String;

    const-string v6, "pathBase not found"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1340
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 567
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 569
    :cond_0
    monitor-exit v1

    .line 570
    return v0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLiveFyreToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 579
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLiveFyreToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/service/LiveFyreService;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    return-void
.end method
