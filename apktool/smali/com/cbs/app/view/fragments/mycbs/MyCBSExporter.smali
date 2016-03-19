.class public Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Z


# instance fields
.field public c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

.field d:Lcom/cbs/app/db/MyShowDataSource;

.field e:Landroid/content/Context;

.field f:Lcom/cbs/app/androiddata/ResponseModelListener;

.field g:Lcom/cbs/app/androiddata/ResponseModelListener;

.field h:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private i:Lcom/cbs/app/view/model/FavoriteShowList;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->i:Lcom/cbs/app/view/model/FavoriteShowList;

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->j:J

    .line 32
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 81
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->g:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 151
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 198
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    .line 199
    new-instance v0, Lcom/cbs/app/db/MyShowDataSource;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    .line 200
    iput-object p2, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;J)J
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->i:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->i:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 204
    sget-boolean v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->b:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->b:Z

    .line 207
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 213
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/cbs/app/view/model/FavoriteShowList;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->j:J

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has show list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->j:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v4

    .line 225
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 232
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 235
    new-instance v5, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v5}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/db/MyShow;

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/FavoriteShow;

    .line 243
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v8

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "integer show id: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 250
    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "long show id2: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "comparing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v8, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const/4 v1, 0x1

    .line 269
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "found it?: "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v3, "true"

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    if-nez v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v1

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "integer show id3: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "long show id3: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v3, Lcom/cbs/app/view/model/FavoriteShow;

    invoke-direct {v3}, Lcom/cbs/app/view/model/FavoriteShow;-><init>()V

    .line 287
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Lcom/cbs/app/view/model/FavoriteShow;->setCbsShowId(J)V

    .line 289
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 269
    :cond_2
    const-string v3, "false"

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Long;

    .line 301
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "adding: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    aput-object v0, v1, v2

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    goto :goto_3

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ids.length: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    array-length v0, v1

    if-lez v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    const-string v2, "favorite-shows"

    invoke-virtual {v5, v0, v2, v1}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)V

    .line 367
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->setMyCBSExported(Landroid/content/Context;)V

    .line 370
    return-void

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 319
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 322
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/db/MyShow;

    .line 331
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v5

    .line 334
    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 336
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v5, Lcom/cbs/app/view/model/FavoriteShow;

    invoke-direct {v5}, Lcom/cbs/app/view/model/FavoriteShow;-><init>()V

    .line 340
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/cbs/app/view/model/FavoriteShow;->setCbsShowId(J)V

    .line 342
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 345
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Long;

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adding: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    aput-object v0, v3, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 351
    goto :goto_6

    .line 354
    :cond_8
    array-length v0, v3

    if-lez v0, :cond_5

    .line 355
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    const-string v2, "favorite-shows"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)V

    goto/16 :goto_4

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method public getShowList()Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->i:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object v0
.end method
