.class public Lcom/cbs/app/adapter/LiveTVScheduleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;,
        Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;,
        Lcom/cbs/app/adapter/LiveTVScheduleAdapter$StreamSelectedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 240
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 241
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a(I)Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 82
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x230

    const/16 v5, 0x22f

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 94
    .line 95
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "schedule item list : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "morelessstaus list : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p0, p1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a(I)Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    move-result-object v2

    .line 99
    if-nez p2, :cond_5

    .line 100
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    const v3, 0x7f0300a7

    invoke-virtual {v0, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    if-eqz p2, :cond_16

    .line 103
    new-instance v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    invoke-direct {v0, v6}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;-><init>(B)V

    .line 104
    const v3, 0x7f0f0288

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->b(Landroid/view/View;I)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->b:Landroid/widget/LinearLayout;

    .line 105
    const v3, 0x7f0f0291

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->b(Landroid/view/View;I)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->a:Landroid/widget/LinearLayout;

    .line 106
    const v3, 0x7f0f0292

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->d:Landroid/widget/TextView;

    .line 107
    const v3, 0x7f0f0293

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->h:Landroid/view/View;

    .line 108
    const v3, 0x7f0f0294

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    .line 109
    const v3, 0x7f0f0295

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->e:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0f0296

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->f:Landroid/widget/TextView;

    .line 111
    const v3, 0x7f0f0298

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f0f0299

    invoke-static {p2, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v1, v0

    .line 123
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 124
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 127
    :cond_1
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_2
    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    :cond_2
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_3
    :goto_3
    if-nez p1, :cond_12

    .line 203
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 206
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    const-string v1, "UP NEXT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_4
    :goto_4
    return-object p2

    .line 117
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    if-eqz v3, :cond_0

    .line 119
    check-cast v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    move-object v1, v0

    goto :goto_1

    .line 129
    :cond_6
    iget-object v3, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v3, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 138
    :cond_7
    if-nez p1, :cond_8

    .line 139
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;

    iget-object v5, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v3, p1, v5, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const-string v0, "less"

    iput-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 148
    const-string v4, "more"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 149
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v4, "More"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;

    iget-object v5, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v3, p1, v5, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 153
    :cond_9
    const-string v4, "less"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v4, "Less"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;

    iget-object v5, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v3, p1, v5, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 160
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_b

    .line 161
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;

    iget-object v5, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v3, p1, v5, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v3, "More"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const-string v0, "more"

    iput-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 170
    :cond_b
    const-string v0, "less"

    iput-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 176
    :cond_c
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_d

    .line 178
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;

    iget-object v5, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v3, p1, v5, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v3, "More"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const-string v0, "more"

    iput-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 185
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 187
    :cond_d
    const-string v0, "less"

    iput-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 189
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 192
    :cond_e
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "Less"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 194
    :cond_f
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "More"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 209
    :cond_10
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    const-string v1, "LIVE NOW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 212
    :cond_11
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    const-string v1, "LIVE NOW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 214
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 215
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 218
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 222
    :cond_13
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    const-string v1, "UP NEXT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 225
    :cond_14
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    const-string v1, "UP NEXT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 229
    :cond_15
    iget-object v0, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_16
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->getCount()I

    move-result v0

    .line 88
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setSchedulesItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->c:Ljava/util/ArrayList;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->d:Ljava/util/ArrayList;

    const-string v2, " "

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
