.class public Lcom/mdialog/android/stream/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/Button;

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->i:Landroid/widget/Button;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdialog/android/stream/a;->j:Z

    .line 154
    new-instance v0, Lcom/mdialog/android/stream/a$1;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/a$1;-><init>(Lcom/mdialog/android/stream/a;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->l:Landroid/view/View$OnClickListener;

    .line 84
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->a:Ljava/lang/Integer;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->b:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/mdialog/android/stream/a;->c:Ljava/lang/Integer;

    .line 87
    iput-object p3, p0, Lcom/mdialog/android/stream/a;->e:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/mdialog/android/stream/a;->f:Ljava/util/ArrayList;

    .line 89
    iput-object p5, p0, Lcom/mdialog/android/stream/a;->g:Ljava/util/ArrayList;

    .line 90
    iput-object p6, p0, Lcom/mdialog/android/stream/a;->h:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->i:Landroid/widget/Button;

    .line 39
    iput-boolean v1, p0, Lcom/mdialog/android/stream/a;->j:Z

    .line 154
    new-instance v0, Lcom/mdialog/android/stream/a$1;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/a$1;-><init>(Lcom/mdialog/android/stream/a;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->l:Landroid/view/View$OnClickListener;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/stream/a;->a:Ljava/lang/Integer;

    .line 96
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->b:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/mdialog/android/stream/a;->c:Ljava/lang/Integer;

    .line 98
    iput-object p3, p0, Lcom/mdialog/android/stream/a;->e:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/mdialog/android/stream/a;->f:Ljava/util/ArrayList;

    .line 100
    iput-object p5, p0, Lcom/mdialog/android/stream/a;->g:Ljava/util/ArrayList;

    .line 101
    iput-object p6, p0, Lcom/mdialog/android/stream/a;->h:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/mdialog/android/stream/a;Landroid/content/Context;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/mdialog/android/stream/a;->b(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/a;
    .locals 7

    .prologue
    .line 173
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 174
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    const-string v0, "start_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 176
    const-string v0, "complete_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 177
    const-string v0, "display_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 178
    new-instance v0, Lcom/mdialog/android/stream/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mdialog/android/stream/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/a;
    .locals 7

    .prologue
    .line 183
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 184
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    const-string v0, "start_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 186
    const-string v0, "complete_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 187
    const-string v0, "display_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 188
    new-instance v0, Lcom/mdialog/android/stream/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mdialog/android/stream/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mdialog/android/stream/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/mdialog/android/stream/a;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->i:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/mdialog/android/stream/a;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mdialog/android/stream/a;->j:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/Button;
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 123
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->k:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/a;->b(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mdialog/android/stream/a;->b(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    invoke-virtual {v1, v4, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v1, "#262626"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 130
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 131
    const-string v1, "Learn More"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 134
    iget-object v1, p0, Lcom/mdialog/android/stream/a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-static {p1}, Lcom/mdialog/android/stream/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 139
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 140
    const-string v2, "#262626"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 142
    const/4 v2, 0x4

    const-string v3, "#f9982a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mdialog/android/stream/a;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mdialog/android/stream/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/mdialog/android/stream/a;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->i:Landroid/widget/Button;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mdialog/android/stream/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/mdialog/android/stream/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    new-instance v1, Lcom/mdialog/android/stream/a$3;

    invoke-direct {v1, p0, p1}, Lcom/mdialog/android/stream/a$3;-><init>(Lcom/mdialog/android/stream/a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mdialog/android/stream/a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mdialog/android/stream/a;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/mdialog/android/stream/a;->j:Z

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdialog/android/stream/a;->j:Z

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/stream/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mdialog/android/stream/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    new-instance v1, Lcom/mdialog/android/stream/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mdialog/android/stream/a$2;-><init>(Lcom/mdialog/android/stream/a;Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->a:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mdialog/android/stream/a;->d:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mdialog/android/stream/a;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mdialog/android/stream/a;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 238
    return-void
.end method
