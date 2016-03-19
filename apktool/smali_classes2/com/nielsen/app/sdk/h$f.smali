.class final Lcom/nielsen/app/sdk/h$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:J

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/Exception;

.field final synthetic i:Lcom/nielsen/app/sdk/h;


# direct methods
.method constructor <init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 148
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$f;->i:Lcom/nielsen/app/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/h$f;->a:I

    .line 183
    const/4 v0, 0x1

    iput v0, p0, Lcom/nielsen/app/sdk/h$f;->b:I

    .line 195
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$f;->c:Ljava/lang/String;

    .line 207
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$f;->d:J

    .line 219
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$f;->e:J

    .line 231
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$f;->f:J

    .line 243
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$f;->g:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$f;->h:Ljava/lang/Exception;

    .line 149
    iput p2, p0, Lcom/nielsen/app/sdk/h$f;->a:I

    .line 150
    iput p3, p0, Lcom/nielsen/app/sdk/h$f;->b:I

    .line 152
    iput-object p4, p0, Lcom/nielsen/app/sdk/h$f;->c:Ljava/lang/String;

    .line 153
    iput-object p7, p0, Lcom/nielsen/app/sdk/h$f;->g:Ljava/lang/String;

    .line 154
    iput-wide p5, p0, Lcom/nielsen/app/sdk/h$f;->d:J

    .line 155
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$f;->f:J

    .line 156
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$f;->e:J

    .line 158
    iput-object p8, p0, Lcom/nielsen/app/sdk/h$f;->h:Ljava/lang/Exception;

    .line 159
    return-void
.end method
