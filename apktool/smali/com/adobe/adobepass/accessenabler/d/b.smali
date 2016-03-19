.class final Lcom/adobe/adobepass/accessenabler/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adobepass/accessenabler/d/b$a;
    }
.end annotation


# instance fields
.field private transient a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

.field private transient b:I

.field private c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/d/b;-><init>(B)V

    .line 144
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->d:F

    .line 180
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/adobe/adobepass/accessenabler/d/b$a;

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 181
    const/16 v0, 0xf

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->c:I

    .line 182
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const v8, 0x7fffffff

    .line 343
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 345
    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 346
    aget-object v2, v1, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 347
    iget v3, v2, Lcom/adobe/adobepass/accessenabler/d/b$a;->a:I

    if-ne v3, p1, :cond_0

    .line 348
    iget-object v0, v2, Lcom/adobe/adobepass/accessenabler/d/b$a;->c:Ljava/lang/Object;

    .line 349
    iput-object p2, v2, Lcom/adobe/adobepass/accessenabler/d/b$a;->c:Ljava/lang/Object;

    .line 366
    :goto_1
    return-object v0

    .line 346
    :cond_0
    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/d/b$a;->d:Lcom/adobe/adobepass/accessenabler/d/b$a;

    goto :goto_0

    .line 354
    :cond_1
    iget v2, p0, Lcom/adobe/adobepass/accessenabler/d/b;->b:I

    iget v3, p0, Lcom/adobe/adobepass/accessenabler/d/b;->c:I

    if-lt v2, v3, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    array-length v0, v0

    .line 1306
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 1308
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 1309
    new-array v5, v4, [Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 1311
    int-to-float v1, v4

    iget v2, p0, Lcom/adobe/adobepass/accessenabler/d/b;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/adobe/adobepass/accessenabler/d/b;->c:I

    .line 1312
    iput-object v5, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 1314
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 1315
    aget-object v0, v3, v1

    :goto_3
    if-eqz v0, :cond_2

    .line 1317
    iget-object v2, v0, Lcom/adobe/adobepass/accessenabler/d/b$a;->d:Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 1319
    iget v6, v0, Lcom/adobe/adobepass/accessenabler/d/b$a;->a:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v4

    .line 1320
    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/adobe/adobepass/accessenabler/d/b$a;->d:Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 1321
    aput-object v0, v5, v6

    move-object v0, v2

    .line 1322
    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/d/b;->a:[Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 359
    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 363
    :cond_4
    new-instance v2, Lcom/adobe/adobepass/accessenabler/d/b$a;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcom/adobe/adobepass/accessenabler/d/b$a;-><init>(IILjava/lang/Object;Lcom/adobe/adobepass/accessenabler/d/b$a;)V

    .line 364
    aput-object v2, v1, v0

    .line 365
    iget v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/d/b;->b:I

    .line 366
    const/4 v0, 0x0

    goto :goto_1
.end method
