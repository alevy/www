<!DOCTYPE html>
<html lang="en">
{% include head.html %}
<body>

<header>
  <h1>{{ site.title }}</h1>

  <p class="h-card">
    <span class="p-job-title">{{ site.job.title }}</span>
    {%- if site.job.department %}
    <span class="p-organization-unit">{{ site.job.department }}</span>
    {%- endif %}
    <span class="p-organization-name">{{ site.job.institution }}</span>
    <span class="p-email">
      <a class="u-email" href="mailto:{{ site.email }}">{{ site.email }}</a>
    </span>
    <span class="p-gpg">
      <a href="/gpg.public.key">GPG Key</a>
    </span>
  </p>
</header>

<article>
{{ content }}
</article>

</body>
</html>
